# CitationPageCache

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**present** | **Bool** | Whether the page has a saved copy | 
**lastCrawledAt** | **Date** | When the saved copy was read; null without usable content | 
**statusCode** | **Int** | A saved successful response or an observed 404/410; null otherwise | 
**errorMessage** | **String** | Always null; crawl errors are not exposed | 
**contentFormat** | **String** |  | 
**bytes** | **Int** |  | 
**htmlTitle** | **String** |  | 
**metaTitle** | **String** |  | 
**metaDescription** | **String** |  | 
**h1** | **String** |  | 
**canonicalUrl** | **String** |  | 
**language** | **String** |  | 
**mentionsProcessed** | **Bool** | Whether the page&#39;s mention analysis has completed for this project | 
**contentAvailable** | **Bool** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


