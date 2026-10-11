# SearchConsoleRowsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | [optional] 
**property** | [**SearchConsoleProperty**](SearchConsoleProperty.md) |  | [optional] 
**from** | **Date** |  | [optional] 
**to** | **Date** |  | [optional] 
**dataThrough** | **Date** | Latest date Google has published for the property (it lags 2-3 days). Later days are missing, not zero. | [optional] 
**page** | **Int** |  | [optional] 
**perPage** | **Int** |  | [optional] 
**total** | **Int** | Rows in this window (one Google request, at most 25,000) | [optional] 
**sort** | **String** |  | [optional] 
**startRow** | **Int** | Present when start_row was set | [optional] 
**truncated** | **Bool** | Present (true) when Google returned 25,000 rows, so more rows exist past this window | [optional] 
**dimensions** | **[String]** |  | [optional] 
**data** | [SearchConsoleRowsResponseDataInner] | One row per combination; only the requested dimensions are present | [optional] 
**requestId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


