# MetricsFiltersEcho

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metrics** | **[String]** | Requested metrics after alias resolution (mention_rate is echoed as visibility) | [optional] 
**granularity** | **String** | day, week or month | [optional] 
**model** | **String** | The model filter, or null when absent or not enabled for the account | [optional] 
**collectionId** | **String** | The collection_id parameter as sent (one id or a comma-separated list) | [optional] 
**collectionIds** | **[Int]** |  | [optional] 
**domains** | **[String]** |  | [optional] 
**countryCode** | **String** | Comma-separated country codes | [optional] 
**languageCode** | **String** | Comma-separated language codes | [optional] 
**prompt** | **Int** | The prompt id filter | [optional] 
**promptType** | **String** | Comma-separated prompt types | [optional] 
**brandKind** | **String** |  | [optional] 
**competitors** | **[Int]** | Competitor ids from the competitors parameter; empty when it was not given | [optional] 
**includeProject** | **Bool** |  | [optional] 
**query** | **String** | Only present when a query filter was given | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


