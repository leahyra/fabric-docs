---
title: Use Azure OpenAI with AI Functions
description: How to use prebuilt Azure OpenAI in Fabric with AI Functions for simple Pandas operations
ms.author: lagayhar
author: lgayhardt
ms.reviewer: vimeland
reviewer: virginiaroman
ms.topic: how-to
ms.custom:
ms.date: 01/16/2026
ms.update-cycle: 180-days
ms.search.form: AI functions
---

# Use Azure OpenAI in Fabric with AI Functions (preview)

This article shows how to use Azure OpenAI in Fabric with AI Functions. AI Functions provide the simplest way to use Azure OpenAI capabilities directly on Pandas DataFrames. For more control or distributed processing, see [Use Azure OpenAI with Python SDK](how-to-use-openai-python-sdk.md) or [Use Azure OpenAI with SynapseML](how-to-use-openai-synapse-ml.md).

## Overview

AI Functions are Pandas and PySpark DataFrame extensions that allow you to apply Azure OpenAI models to your data with minimal code. They handle authentication, batching, and error handling automatically. For up to date and detailed information refer to [AI Functions overview](../../data-science/ai-functions/overview.md).

The PySpark AI Functions leverage [SynapseML](https://github.com/microsoft/SynapseML) library under the hood which extends LLM capabilities for distributed processing. Read more on [using Azure OpenAI with SynapseML](how-to-use-openai-synapse-ml.md).

## Generate custom responses

Use `ai.generate_response` to send custom prompts to Azure OpenAI models:

```python
import pandas as pd

# Create a DataFrame with text data
df = pd.DataFrame({
    "email_body": [
        "Please send me the Q4 financial report as soon as possible.",
        "Thank you for your presentation yesterday. It was very informative.",
        "I need help setting up my account credentials."
    ]
})

# Generate email subject lines
df["subject"] = df.ai.generate_response("Write a short email subject line.")

print(df[["email_body", "subject"]])
```

The AI function analyzes the content in each row and generates appropriate responses based on your prompt.

## Structured output

Request structured JSON responses for easier parsing:

```python
import pandas as pd

df = pd.DataFrame({
    "feedback": [
        "The product is great but shipping was slow.",
        "Excellent customer service and fast delivery!",
        "The item arrived damaged and customer support was unhelpful."
    ]
})

# Analyze feedback with structured JSON output
df["analysis"] = df.ai.generate_response(
    prompt="Analyze this feedback and return JSON with 'sentiment' (positive/negative/neutral), 'main_issue', and 'priority' (high/medium/low).",
    response_format={"type": "json_object"}
)

print(df[["feedback", "analysis"]])
```

The `response_format` parameter ensures the model returns valid JSON that can be parsed programmatically.

## Available AI Functions

AI Functions provide specialized operations for common tasks:

| Function | Description | Example |
|----------|-------------|---------|
| `ai.classify` | Categorize text into predefined classes | Classify customer inquiries by topic |
| `ai.extract` | Extract specific information from text | Extract dates, names, or amounts from documents |
| `ai.summarize` | Generate concise summaries | Summarize long articles or reports |
| `ai.translate` | Translate text between languages | Translate customer feedback to English |
| `ai.analyze_sentiment` | Determine sentiment (positive/negative/neutral) | Analyze product review sentiment |
| `ai.embed` | Generate embeddings for similarity search | Create vector representations of text |
| `ai.generate_response` | Generate custom responses | Create personalized responses based on custom prompts |

For complete documentation on AI Functions, see [AI Functions overview](../../data-science/ai-functions/overview.md).

## When to use AI Functions vs other approaches

Choose AI Functions when:

- Working with pandas and PySpark DataFrames
- Need simple, straightforward operations with validated and small system prompts
- Want minimal setup and code
- Processing large datasets and need structured outputs

Consider alternatives when:

- Need distributed processing for millions of rows in PySpark with no system prompt overhead → Use [SynapseML](how-to-use-openai-synapse-ml.md)
- Require fine-grained control over raw API parameters → Use [Python SDK](how-to-use-openai-python-sdk.md)
- Building complex conversational systems → Use [Python SDK](how-to-use-openai-python-sdk.md)

## Related content

- [AI Functions overview](../../data-science/ai-functions/overview.md) for complete documentation
- [Use Azure OpenAI with Python SDK](how-to-use-openai-python-sdk.md) for more control
- [Use Azure OpenAI with SynapseML](how-to-use-openai-synapse-ml.md) for distributed processing
- [Use Azure OpenAI with REST API](how-to-use-openai-via-rest-api.md)
