# AiModelSentimentMatrixActor

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | [optional] 
**id** | **Int** | Project id, or competitor id | [optional] 
**competitorId** | **Int** | Null for the project, the competitor id otherwise | [optional] 
**name** | **String** |  | [optional] 
**domain** | **String** | Bare (scheme-less) domain. Null for the project actor when the project has no URL. | [optional] 
**totalSentiments** | **Int** | The actor&#39;s sentiment verdicts summed over the models | [optional] 
**models** | [String: AiModelSentimentCell] | One cell per model, keyed by model | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


