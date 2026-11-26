# RecommendationDetailResponse

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
**summary** | [**RecommendationDetailResponseSummary**](RecommendationDetailResponseSummary.md) |  | 
**context** | **JSONValue** | Generation context and run diagnostics as stored; empty until the generation completes. Its keys are not a stable contract | 
**reportData** | **[String: JSONValue]** | The stored run, including the evidence indices (prompts_index, citations_index, own_content_index and others) that the source_refs codes of the items point to. Its keys are not a stable contract | 
**itemCounts** | [**RecommendationDetailResponseItemCounts**](RecommendationDetailResponseItemCounts.md) |  | 
**items** | [RecommendationItem] |  | 
**requestId** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


