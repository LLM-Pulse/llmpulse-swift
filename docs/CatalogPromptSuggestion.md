# CatalogPromptSuggestion

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | 
**prompt** | **String** |  | 
**status** | **String** | pending, accepted or rejected | 
**source** | **String** | Always catalog | 
**countryCode** | **String** |  | 
**languageCode** | **String** |  | 
**product** | [**CatalogPromptSuggestionProduct**](CatalogPromptSuggestionProduct.md) |  | 
**promptId** | **Int** | The tracked prompt an accepted suggestion became; null until accepted | 
**acceptedAt** | **Date** | When the suggestion was accepted; null until then | 
**createdAt** | **Date** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


