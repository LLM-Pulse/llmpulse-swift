# AiOverviewResultsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | 
**from** | **Date** |  | 
**to** | **Date** |  | 
**filters** | [**AiModelInsightsReportFiltersEcho**](AiModelInsightsReportFiltersEcho.md) |  | 
**granularity** | **String** |  | 
**summary** | [**AiOverviewResultCounts**](AiOverviewResultCounts.md) |  | 
**chart** | [AiOverviewResultsResponseChartInner] | One point per period of the window, oldest first, 0 included | 
**byPrompt** | [**AiOverviewResultsResponseByPrompt**](AiOverviewResultsResponseByPrompt.md) |  | 
**requestId** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


