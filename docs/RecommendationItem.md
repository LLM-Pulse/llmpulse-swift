# RecommendationItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | 
**recommendationId** | **Int** |  | 
**recommendationType** | **String** |  | 
**category** | **String** |  | 
**title** | **String** |  | 
**description** | **String** |  | [optional] 
**priority** | **String** |  | 
**estimatedImpact** | **String** |  | [optional] 
**actionItems** | **[String]** |  | 
**sourceRefs** | **[String]** | Evidence codes (e.g. P1, C2) resolved in resolved_source_refs | 
**status** | **String** |  | 
**statusChangedAt** | **Date** |  | [optional] 
**position** | **Int** |  | 
**metadata** | **[String: JSONValue]** | Free-form details. Carries effort (low, medium or high) when the generator rated it, archive_reason (not_relevant, too_complex or competitor) on an item archived with a reason, and domain on PR &amp; Citation Building items. | [optional] 
**createdAt** | **Date** |  | 
**updatedAt** | **Date** |  | 
**resolvedSourceRefs** | [[String: JSONValue]] | The evidence each source_refs code points to (prompt, citation or own page) | [optional] 
**unresolvedSourceRefs** | **[String]** | Present only when a code points to no stored evidence | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


