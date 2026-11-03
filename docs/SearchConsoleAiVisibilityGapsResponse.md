# SearchConsoleAiVisibilityGapsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | [optional] 
**property** | [**SearchConsoleProperty**](SearchConsoleProperty.md) |  | [optional] 
**properties** | [SearchConsoleProperty] | With a list or all in the property parameter, the properties whose data the response holds (instead of property) | [optional] 
**excludedProperties** | [SearchConsoleExcludedProperty] | With a list or all, selected properties left out because another selected property already counts them | [optional] 
**propertyErrors** | [SearchConsolePropertyError] | With a list or all, selected properties Google refused, left out of the figures | [optional] 
**from** | **Date** |  | [optional] 
**to** | **Date** |  | [optional] 
**dataThrough** | **Date** | Latest date Google has published for the property, or for every combined property (it lags 2-3 days). Later days are missing, not zero. | [optional] 
**minImpressions** | **Int** |  | [optional] 
**unmatchedOnly** | **Bool** |  | [optional] 
**matchedCount** | **Int** | Queries with at least min_impressions that match a prompt of the project, counted before unmatched_only leaves them out | [optional] 
**page** | **Int** |  | [optional] 
**perPage** | **Int** |  | [optional] 
**total** | **Int** | Rows in the report before paging | [optional] 
**truncated** | **Bool** | Present (true) when Google returned its 25,000-row maximum for a property, so the report covers its top rows only | [optional] 
**data** | [SearchConsoleAiVisibilityGapsResponseDataInner] |  | [optional] 
**requestId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


