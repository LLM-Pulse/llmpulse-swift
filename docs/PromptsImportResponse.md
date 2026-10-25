# PromptsImportResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | 
**processedRows** | **Int** | Distinct rows imported or matched to an existing prompt | 
**created** | **Int** |  | 
**duplicates** | **Int** | Rows that matched an existing prompt (they still get the row&#39;s tags, unless a team member lacks update access to Prompts) | 
**tagged** | **Int** | New prompt-tag links | 
**createdTags** | **Int** |  | 
**rowErrors** | [PromptsImportResponseRowErrorsInner] | Rows that were skipped or whose tags were not added, by their index in rows | 
**lengthWarning** | **String** | Which tracked AI models will skip new prompts that are too long for them | 
**promptsAvailable** | **Int** | Prompt slots left on the plan; null when unlimited | 
**tracked** | **Bool** | Whether scheduled runs include the project the prompts were imported into. False when it is paused or beyond the plan&#39;s project limit, so the new prompts do not run until that changes | 
**untrackedReason** | **String** | Why tracked is false: paused or project_limit. Null when tracked | 
**warning** | **String** | What to do when tracked is false. Null when tracked | 
**requestId** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


