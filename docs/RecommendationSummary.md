# RecommendationSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | 
**projectId** | **Int** |  | 
**recommendationType** | **String** |  | 
**status** | **String** |  | 
**errorMessage** | **String** | Set only when status is failed | 
**generatedAt** | **Date** | Null until the generation completes | 
**createdAt** | **Date** |  | 
**updatedAt** | **Date** |  | 
**totalRecommendations** | **Int** |  | 
**highPriorityCount** | **Int** |  | 
**summary** | [**RecommendationSummarySummary**](RecommendationSummarySummary.md) |  | 
**context** | **JSONValue** | Generation context and run diagnostics as stored; empty until the generation completes. Its keys are not a stable contract | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


