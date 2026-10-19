# AnswerDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | [optional] 
**promptId** | **Int** |  | [optional] 
**promptText** | **String** |  | [optional] 
**model** | **String** |  | [optional] 
**response** | **String** |  | [optional] 
**responseTruncated** | **Bool** |  | [optional] 
**executedAt** | **Date** |  | [optional] 
**durationMs** | **Double** | Milliseconds, rounded to one decimal place | [optional] 
**success** | **Bool** | Null while the answer is still pending | [optional] 
**noResult** | **Bool** | True for a sentinel non-answer (the provider returned nothing after all retries, or the model declined to answer, today only Gemini); excluded from platform metrics | [optional] 
**fanOutQueries** | **[String]** |  | [optional] 
**mentions** | **[JSONValue]** |  | [optional] 
**citations** | **[JSONValue]** |  | [optional] 
**competitorMentions** | **[JSONValue]** |  | [optional] 
**competitorCitations** | **[JSONValue]** |  | [optional] 
**sentiments** | **[JSONValue]** | Needs the Growth plan or above; left out below it and named in plan_required_fields | [optional] 
**sources** | **[JSONValue]** |  | [optional] 
**shoppingProducts** | **[JSONValue]** | Needs the Scale plan or above; left out below it and named in plan_required_fields | [optional] 
**brandEntities** | **[JSONValue]** |  | [optional] 
**localBusinesses** | **[JSONValue]** |  | [optional] 
**locale** | [**AnswerDetailsLocale**](AnswerDetailsLocale.md) |  | [optional] 
**planRequiredFields** | **[String]** | The fields left out of this answer because the account&#39;s plan does not include them (sentiments below Growth, shopping_products below Scale). Always present, empty when nothing is left out | 
**appUrl** | **String** | Opens this answer in the app. The link names its project, so it opens there for any user with access to that project | [optional] 
**requestId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


