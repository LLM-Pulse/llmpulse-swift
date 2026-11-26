# AiModelInsightsReportFiltersEcho

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **Date** |  | 
**to** | **Date** |  | 
**granularity** | **String** |  | 
**countryCode** | **String** | Comma-separated country codes | [optional] 
**languageCode** | **String** | Comma-separated language codes | [optional] 
**collectionId** | **String** | Comma-separated collection ids | [optional] 
**promptType** | **String** | Comma-separated prompt types | [optional] 
**brandKind** | **String** |  | [optional] 
**model** | **String** | The model filter; always ai_overview on the AI Overview report | [optional] 
**competitors** | **[Int]** | Competitor ids from the competitors parameter; empty when it was not given | 
**brand1** | **String** | Position distribution only. The id, as a string, of the competitor compared as the first brand; left out for the project brand | [optional] 
**brand2** | **String** | Position distribution only. The id, as a string, of the competitor compared as the second brand, by default the competitor with the most mentions; left out when the project has none to compare | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


