# SearchConsoleTimeseriesResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | [optional] 
**property** | [**SearchConsoleProperty**](SearchConsoleProperty.md) |  | [optional] 
**from** | **Date** |  | [optional] 
**to** | **Date** |  | [optional] 
**dataThrough** | **Date** | Latest date Google has published for the property (it lags 2-3 days). Later days are missing, not zero. | [optional] 
**granularity** | **String** |  | [optional] 
**data** | [SearchConsoleTimeseriesResponseDataInner] |  | [optional] 
**requestId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


