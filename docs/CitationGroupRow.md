# CitationGroupRow

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sourceId** | **Int** | The group&#39;s first citation | 
**view** | **String** | url, domain or host | 
**key** | **String** | The URL as cited, the domain or the host | 
**totalResponses** | **Int** | Answers citing it | 
**totalCitations** | **Int** |  | 
**citationRate** | **Double** | total_responses as a percentage (0-100) of citation_rate_denominator | 
**citationRateDenominator** | **Int** | Answers matching the filters | 
**avgCitationPosition** | **Double** | Null when no visible citation has a rank | 
**firstSeenAt** | **Date** |  | 
**lastSeenAt** | **Date** |  | 
**models** | **[String: Int]** | Answers citing it per AI model, keyed by model | 
**url** | **String** | url view only. The URL as cited | [optional] 
**urlSha256** | **String** | url view only. Key of the cited page, shared by the URL&#39;s variants | [optional] 
**normalizedUrl** | **String** | url view only | [optional] 
**pageCache** | [**CitationPageCache**](CitationPageCache.md) |  | [optional] 
**pageMentions** | [**CitationPageMentions**](CitationPageMentions.md) |  | [optional] 
**domain** | **String** | domain view only | [optional] 
**host** | **String** | host view only | [optional] 
**aggregateDetails** | [**CitationGroupRowAggregateDetails**](CitationGroupRowAggregateDetails.md) |  | [optional] 
**citationSeries** | [**CitationSeries**](CitationSeries.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


