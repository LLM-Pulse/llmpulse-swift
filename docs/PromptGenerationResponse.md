# PromptGenerationResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | The run id; poll GET /prompt_generations/{id} with it (kept for 24 hours) | 
**projectId** | **Int** |  | 
**source** | **String** |  | 
**status** | **String** |  | 
**params** | [**PromptGenerationResponseParams**](PromptGenerationResponseParams.md) |  | 
**createdAt** | **Date** |  | 
**finishedAt** | **Date** |  | 
**suggestionsCount** | **Int** |  | 
**suggestions** | [SuggestedPrompt] | The suggestions the run saved to the Suggested prompts queue, with their current status | 
**error** | [**PromptGenerationResponseError**](PromptGenerationResponseError.md) |  | 
**requestId** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


