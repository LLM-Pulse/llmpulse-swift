# AnswerRecord

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | 
**promptId** | **Int** |  | 
**promptText** | **String** |  | 
**model** | **String** |  | 
**executedAt** | **Date** |  | 
**durationMs** | **Double** | Milliseconds our pipeline spent processing the collected answer, rounded to one decimal place | 
**noResult** | **Bool** | True for a sentinel non-answer (no answer could be collected after all retries, or the model declined to answer, today only Gemini); excluded from platform metrics | 
**noResultReason** | **String** | Present only when no_result is true. declined &#x3D; the model declined to answer and response holds its reply; no_answer &#x3D; no answer could be collected | [optional] 
**mentionsCount** | **Int** | Mentions of your brand in the answer | 
**citationsCount** | **Int** | Citations of your brand in the answer | 
**appUrl** | **String** | Opens this answer in the app. The link names its project, so it opens there for any user with access to that project | 
**response** | **String** | The answer text, cut to 10,000 characters (without query) | [optional] 
**responseTruncated** | **Bool** | Whether response was cut (without query) | [optional] 
**snippet** | **String** | The text around the first match (with query) | [optional] 
**matchCount** | **Int** | Matches of query in the answer (with query) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


