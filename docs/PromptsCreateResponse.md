# PromptsCreateResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | [optional] 
**created** | **Int** |  | [optional] 
**skipped** | **Int** |  | [optional] 
**totalAfter** | **Int** |  | [optional] 
**promptsAvailable** | **Int** |  | [optional] 
**tracked** | **Bool** | Whether scheduled runs include the project the prompts were added to. False when it is paused or beyond the plan&#39;s project limit, so the new prompts do not run until that changes | [optional] 
**untrackedReason** | **String** | Why tracked is false: paused or project_limit. Null when tracked | [optional] 
**warning** | **String** | What to do when tracked is false. Null when tracked | [optional] 
**data** | [PromptsCreateResponseDataInner] |  | [optional] 
**requestId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


