# SearchConsoleSummaryResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | [optional] 
**property** | [**SearchConsoleProperty**](SearchConsoleProperty.md) |  | [optional] 
**from** | **Date** |  | [optional] 
**to** | **Date** |  | [optional] 
**dataThrough** | **Date** | Latest date Google has published for the property (it lags 2-3 days). Later days are missing, not zero. | [optional] 
**totals** | [**SearchConsoleMetrics**](SearchConsoleMetrics.md) |  | [optional] 
**dimension** | **String** | Present when a breakdown was requested | [optional] 
**breakdown** | [SearchConsoleSummaryResponseBreakdownInner] | Present when a breakdown was requested, sorted by impressions descending | [optional] 
**breakdownTruncated** | **Bool** | Present (true) when limit or Google&#39;s 25,000-row maximum left breakdown rows out, so they add up to less than totals | [optional] 
**requestId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


