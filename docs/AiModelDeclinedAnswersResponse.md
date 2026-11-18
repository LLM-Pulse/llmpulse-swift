# AiModelDeclinedAnswersResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | 
**from** | **Date** | Start of the tracking period holding the first day asked for | 
**to** | **Date** |  | 
**model** | **String** | The model the counts are for | 
**cadence** | **String** | The account&#39;s current tracking cadence: daily, weekly or monthly. Chart periods before a switch from weekly to daily stay weekly. | 
**filters** | [**AiModelDeclinedAnswersResponseFilters**](AiModelDeclinedAnswersResponseFilters.md) |  | [optional] 
**summary** | [**AiModelDeclinedAnswersResponseSummary**](AiModelDeclinedAnswersResponseSummary.md) |  | 
**chart** | [AiModelDeclinedAnswersResponseChartInner] | One point per tracking period holding an answer, oldest first. A period without answers has no point; a period with answers and no declines is a real 0. | 
**byPrompt** | [**AiModelDeclinedAnswersResponseByPrompt**](AiModelDeclinedAnswersResponseByPrompt.md) |  | 
**requestId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


