# SearchConsoleAiVisibilityGapsResponseDataInner

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**query** | **String** |  | [optional] 
**impressions** | **Int** |  | [optional] 
**clicks** | **Int** |  | [optional] 
**ctr** | **Double** | 0..1 fraction | [optional] 
**position** | **Double** | Impression-weighted average position | [optional] 
**promptId** | **Int** | The project&#39;s prompt with the same text as the query; null when no prompt matches | [optional] 
**responses** | **Int** | AI answers the matching prompt got in the window over the account&#39;s enabled models; null when no prompt matches | [optional] 
**brandVisibility** | **Double** | Brand Visibility of the matching prompt in the window, percent (0-100) of its AI answers that mention the brand, over the account&#39;s enabled models; null when no prompt matches or it has no answer | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


