# SovResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | [optional] 
**from** | **Date** |  | [optional] 
**to** | **Date** |  | [optional] 
**granularity** | **String** | day, week or month | [optional] 
**filters** | [**MetricsFiltersEcho**](MetricsFiltersEcho.md) |  | [optional] 
**periods** | [SovResponsePeriodsInner] | Per-bucket sample size and completeness: mentions is the total the shares were computed on (1-3 mentions produce the 100/50/33.33 low-sample patterns); partial marks buckets still collecting data or clipped by the requested window; confidence and margin_of_error read the sample size. | [optional] 
**sample** | [**SovResponseSample**](SovResponseSample.md) |  | [optional] 
**overTime** | [SovResponseOverTimeInner] |  | [optional] 
**current** | [SovResponseCurrentInner] |  | [optional] 
**breakdown** | [SovResponseBreakdownInner] |  | [optional] 
**others** | [SovResponseOthersInner] | Actors ranked fifth and below, folded into the Others share of breakdown | [optional] 
**requestId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


