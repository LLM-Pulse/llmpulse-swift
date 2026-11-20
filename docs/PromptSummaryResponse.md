# PromptSummaryResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | [optional] 
**from** | **Date** |  | [optional] 
**to** | **Date** |  | [optional] 
**filters** | [**MetricsFiltersEcho**](MetricsFiltersEcho.md) |  | [optional] 
**breakdown** | **String** |  | [optional] 
**sort** | **String** |  | [optional] 
**sortDir** | **String** |  | [optional] 
**page** | **Int** |  | [optional] 
**perPage** | **Int** |  | [optional] 
**total** | **Int** |  | [optional] 
**data** | [PromptSummaryRow] |  | [optional] 
**planRequiredFields** | **[String]** | The row fields left out because they need a higher plan (the sentiment fields below Growth); empty when none is | 
**requestId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


