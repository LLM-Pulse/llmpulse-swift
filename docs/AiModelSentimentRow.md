# AiModelSentimentRow

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**model** | **String** | AI model key, as /dimensions/models lists it | [optional] 
**label** | **String** | Display name of the model | [optional] 
**color** | **String** | Hex color the app charts the model with | [optional] 
**sentimentsCount** | **Int** | Brand sentiment verdicts in the model&#39;s answers | [optional] 
**positiveCount** | **Int** | Positive and very positive verdicts | [optional] 
**negativeCount** | **Int** | Negative and very negative verdicts | [optional] 
**netSentiment** | **Double** | positive_count minus negative_count as a percentage (-100 to 100) of sentiments_count, neutral verdicts counted in the base; null when sentiments_count is 0 | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


