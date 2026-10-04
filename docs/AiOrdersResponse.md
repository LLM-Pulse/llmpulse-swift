# AiOrdersResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | 
**platform** | **String** |  | 
**currency** | **String** | ISO 4217 code of the most recent stored day; null when the window holds no stored order | 
**from** | **Date** |  | 
**to** | **Date** |  | 
**totals** | [**AiOrdersResponseTotals**](AiOrdersResponseTotals.md) |  | 
**bySource** | [AiOrdersResponseBySourceInner] | One row per AI assistant, highest revenue first | 
**series** | [AiOrdersResponseSeriesInner] | Days that have stored orders, oldest first | 
**requestId** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


