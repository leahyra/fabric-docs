# PowerShell script to remove 'whhender' from ms.reviewer metadata
# If whhender is the only reviewer, remove ms.reviewer entirely and track file
# If whhender is one of multiple reviewers, remove only whhender value

$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
$noPMsList = @()
$modifiedCount = 0

# Get all .md and .yml files
$files = Get-ChildItem -Path $scriptPath -Include *.md, *.yml -Recurse

foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName -Raw
    $modified = $false
    
    # Find ms.reviewer line
    $msReviewerMatch = [regex]::Match($content, '(?m)^(\s*)(ms\.reviewer:\s*)(.+?)\s*$')
    
    if ($msReviewerMatch.Success) {
        $leadingWhitespace = $msReviewerMatch.Groups[1].Value
        $reviewerValue = $msReviewerMatch.Groups[3].Value.Trim()
        
        # Parse comma-separated values
        $reviewers = $reviewerValue -split '\s*,\s*' | ForEach-Object { $_.Trim() } | Where-Object { $_ -ne '' }
        
        # Check if whhender is in the list
        if ($reviewers -contains 'whhender') {
            # Remove whhender from the list
            $newReviewers = $reviewers | Where-Object { $_ -ne 'whhender' }
            
            if ($newReviewers.Count -eq 0) {
                # whhender was the only reviewer - remove entire line and track file
                $content = $content -replace '(?m)^\s*ms\.reviewer:\s*.+?\r?\n', ''
                $noPMsList += $file.FullName
                $modified = $true
                Write-Host "Removed ms.reviewer (no PMs remaining): $($file.FullName)"
            } else {
                # Other reviewers exist - rebuild the value without whhender
                $newReviewerValue = $newReviewers -join ', '
                $content = $content -replace "(?m)^(\s*)(ms\.reviewer:\s*).+?$", "`$1`$2$newReviewerValue"
                $modified = $true
                Write-Host "Removed whhender from reviewers: $($file.FullName)"
            }
        }
    }
    
    # Write back if modified
    if ($modified) {
        Set-Content -Path $file.FullName -Value $content -NoNewline
        $modifiedCount++
    }
}

# Output no PMs list to file
$outputFile = Join-Path -Path $scriptPath -ChildPath "files_with_no_pms.txt"
if ($noPMsList.Count -gt 0) {
    $output = "Files with no PM reviewers after removing whhender:`n"
    $output += "=" * 80 + "`n`n"
    
    foreach ($item in $noPMsList) {
        $output += "$item`n"
    }
    
    $output += "`nTotal files with no PMs: $($noPMsList.Count)"
    Set-Content -Path $outputFile -Value $output
    Write-Host "`nNo PMs list written to: $outputFile"
    Write-Host "Total files with no PMs: $($noPMsList.Count)"
} else {
    Set-Content -Path $outputFile -Value "All files have at least one PM reviewer (other than whhender)."
    Write-Host "`nNo files left without PMs. Report written to: $outputFile"
}

Write-Host "`nProcessing complete!"
Write-Host "Total files modified: $modifiedCount"
