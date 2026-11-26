# AiTrafficResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | 
**provider** | **String** | The connected provider: google_analytics, adobe_analytics, adobe_cja, posthog, plausible, matomo or piano | 
**from** | **Date** |  | 
**to** | **Date** |  | 
**granularity** | **String** |  | 
**totals** | [**AiTrafficResponseTotals**](AiTrafficResponseTotals.md) |  | 
**bySource** | [AiTrafficResponseBySourceInner] | One row per AI source with traffic in the window, most sessions first | 
**timeseries** | [String: [String: Int]] | Sessions keyed by AI source slug, then by the first day of the period (YYYY-MM-DD); a period without traffic is left out | 
**requestId** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


