# SearchConsoleListResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | [optional] 
**property** | [**SearchConsoleProperty**](SearchConsoleProperty.md) |  | [optional] 
**from** | **Date** |  | [optional] 
**to** | **Date** |  | [optional] 
**dataThrough** | **Date** | Latest date Google has published for the property, or for every combined property (it lags 2-3 days). Later days are missing, not zero. | [optional] 
**page** | **Int** |  | [optional] 
**perPage** | **Int** |  | [optional] 
**total** | **Int** | Rows in this window (one Google request, at most 25,000) | [optional] 
**sort** | **String** |  | [optional] 
**startRow** | **Int** | Present when start_row was set | [optional] 
**truncated** | **Bool** | Present (true) when Google returned 25,000 rows, so more rows exist past this window | [optional] 
**data** | [SearchConsoleListResponseDataInner] |  | [optional] 
**requestId** | **String** |  | [optional] 
**properties** | [SearchConsoleProperty] | With a list or all in the property parameter, the properties whose data the response holds (instead of property) | [optional] 
**excludedProperties** | [SearchConsoleExcludedProperty] | With a list or all, selected properties left out because another selected property already counts them | [optional] 
**propertyErrors** | [SearchConsolePropertyError] | With a list or all, selected properties Google refused, left out of the figures | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


