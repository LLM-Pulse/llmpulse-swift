# PromptsImportResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | 
**processedRows** | **Int** | Distinct rows imported or matched to an existing prompt | 
**created** | **Int** |  | 
**duplicates** | **Int** | Rows that matched an existing prompt (they still get the row&#39;s tags) | 
**tagged** | **Int** | New prompt-tag links | 
**createdTags** | **Int** |  | 
**rowErrors** | [PromptsImportResponseRowErrorsInner] | Rows that were skipped, by their index in rows | 
**lengthWarning** | **String** | Which tracked AI models will skip new prompts that are too long for them | 
**promptsAvailable** | **Int** | Prompt slots left on the plan; null when unlimited | 
**requestId** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


