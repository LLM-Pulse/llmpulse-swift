# Project

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | [optional] 
**name** | **String** | Internal project label (sidebar, settings, admin) | [optional] 
**brandName** | **String** | LLM-facing brand label (used in prompts and customer-facing charts). Null when not set, in which case prompts and charts use &#x60;name&#x60;. | [optional] 
**tracked** | **Bool** | Whether scheduled runs include this project. False when it is paused, or when the plan&#39;s project limit leaves it out (the oldest projects up to the limit run), so its prompts do not run | [optional] 
**untrackedReason** | **String** | Why tracked is false: paused or project_limit. Null when tracked | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


