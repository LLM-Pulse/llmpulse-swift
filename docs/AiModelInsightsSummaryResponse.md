# AiModelInsightsSummaryResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | [optional] 
**from** | **Date** |  | [optional] 
**to** | **Date** |  | [optional] 
**filters** | [**AiModelInsightsFiltersEcho**](AiModelInsightsFiltersEcho.md) |  | [optional] 
**models** | [AiModelInsightsModel] | The AI models the account has enabled or that answered in the window, in the in-app column order | [optional] 
**summary** | [**AiModelInsightsSummaryResponseSummary**](AiModelInsightsSummaryResponseSummary.md) |  | [optional] 
**planRequiredFields** | **[String]** | The summary sections left out because they need a higher plan (brand_net_sentiment_by_model and sentiment_market_share below Growth); empty when none is | 
**requestId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


