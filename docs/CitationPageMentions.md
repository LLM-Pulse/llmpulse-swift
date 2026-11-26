# CitationPageMentions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**brandMentioned** | **Bool** |  | 
**competitorMentioned** | **Bool** |  | 
**brandPosition** | **Int** | Rank of the brand&#39;s first mention on the page; null when it has none | 
**contentGapStatus** | **String** | missing_page_cache, content_unavailable, mentions_not_processed, mentioned, gap (a competitor but not the brand) or not_mentioned | 
**brands** | [CitationPageMentionsBrandsInner] | Each brand the page mentions once, in order of first mention | 
**mentions** | [CitationPageMentionsMentionsInner] | Every mention on the page with its snippet; not sent on GET /citation_intelligence/groups | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


