# CitedUrlOccurrencesResponseAllOfData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sourceId** | **Int** |  | 
**answerId** | **Int** |  | 
**promptExecutionId** | **Int** | Same as answer_id | 
**promptId** | **Int** |  | 
**promptText** | **String** |  | 
**model** | **String** |  | 
**executedAt** | **Date** |  | 
**citationPosition** | **Int** | Rank of the citation in the answer; 0 for a background source reference | 
**url** | **String** | Normalized cited URL | 
**domain** | **String** |  | 
**sourceType** | **String** | owned, competitor or third_party | 
**responseExcerpt** | **String** | The first 600 characters of the answer | 
**responseTruncated** | **Bool** |  | 
**fanOutQueries** | **[String]** | Sub-queries the model issued while answering; null when the model reports none | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


