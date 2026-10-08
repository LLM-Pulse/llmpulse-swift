# PromptExecutionRecord

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | 
**promptId** | **Int** |  | 
**executedAt** | **Date** | Null while the answer is still pending | 
**durationMs** | **Double** |  | 
**success** | **Bool** | Null while the answer is still pending | 
**model** | **String** |  | 
**fanOutQueries** | **[String]** | Sub-queries the model issued while answering; null when the model reports none | 
**hasMention** | **Bool** |  | 
**hasCitation** | **Bool** |  | 
**mentionsCount** | **Int** | 1 when the answer mentions the brand, otherwise 0 | 
**citationsCount** | **Int** | 1 when the answer cites the brand, otherwise 0 | 
**appUrl** | **String** | Opens this answer in the app. The link names its project, so it opens there for any user with access to that project | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


