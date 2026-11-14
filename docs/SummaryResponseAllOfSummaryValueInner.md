# SummaryResponseAllOfSummaryValueInner

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**actor** | [**Actor**](Actor.md) |  | [optional] 
**metric** | **String** |  | [optional] 
**total** | **Double** | Count metrics sum the buckets; rate, position and sentiment metrics average them. ai_visibility_score (weighted_visibility) is the window&#39;s points divided by its data days (the days with responses under the filters), the number the app shows, whatever the granularity. | [optional] 
**aggregation** | **String** | How total combines the buckets (average for ai_visibility_score, a per-data-day score) | [optional] 
**min** | **Double** |  | [optional] 
**max** | **Double** |  | [optional] 
**last** | **Double** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


