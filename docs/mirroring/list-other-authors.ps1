# PowerShell script to list all files where ms.author is not whhender
# Shows the file name and the current ms.author value

$folderPath = $PSScriptRoot
if (-not $folderPath) {
    $folderPath = Get-Location
}

# Get all .md and .yml files in the folder
$files = Get-ChildItem -Path $folderPath -File | Where-Object { $_.Extension -in ".md", ".yml" }

$results = @()

foreach ($file in $files) {
    $lines = Get-Content -Path $file.FullName
    
    foreach ($line in $lines) {
        # Check if line matches "ms.author:" pattern
        if ($line -match '^\s*ms\.author:\s*(.+)$') {
            $authorValue = $matches[1].Trim()
            
            # Check if the value is NOT whhender
            if ($authorValue -ne 'whhender') {
                $results += [PSCustomObject]@{
                    FileName = $file.Name
                    MsAuthor = $authorValue
                }
            }
            break  # Only check first ms.author per file
        }
    }
}

if ($results.Count -eq 0) {
    Write-Host "No files found where ms.author is not whhender." -ForegroundColor Yellow
} else {
    Write-Host "Files where ms.author is not whhender:" -ForegroundColor Cyan
    Write-Host ""
    $results | Format-Table -AutoSize
    Write-Host "Total: $($results.Count) files" -ForegroundColor Cyan
}
