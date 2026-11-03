# AiModelWeightedVisibilityMatrixActor

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | [optional] 
**id** | **Int** | Project id, or competitor id | [optional] 
**competitorId** | **Int** | Null for the project, the competitor id otherwise | [optional] 
**name** | **String** |  | [optional] 
**domain** | **String** | Bare (scheme-less) domain. Null for the project actor when the project has no URL. | [optional] 
**totalWeightedVisibilityScore** | **Double** | The actor&#39;s AI Visibility Score points summed over the models | [optional] 
**models** | [String: AiModelWeightedVisibilityCell] | One cell per model, keyed by model | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


