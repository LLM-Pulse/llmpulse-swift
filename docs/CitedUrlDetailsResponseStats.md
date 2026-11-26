# CitedUrlDetailsResponseStats

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**totalResponses** | **Int** | Answers citing the URL under the filters | 
**totalCitations** | **Int** |  | 
**citationRate** | **Double** | total_responses as a percentage (0-100) of citation_rate_denominator | 
**citationRateDenominator** | **Int** | Answers matching the filters | 
**avgCitationPosition** | **Double** | Null when no visible citation has a rank | 
**firstSeenAt** | **Date** | Null when no citation matches the filters | 
**lastSeenAt** | **Date** | Null when no citation matches the filters | 
**distinctUrls** | **Int** | Spellings of the URL cited (tracking parameters, a trailing slash) | 
**sourceTypes** | [**CitedUrlDetailsResponseStatsSourceTypes**](CitedUrlDetailsResponseStatsSourceTypes.md) |  | 
**models** | **[String: Int]** | Answers citing the URL per AI model, keyed by model | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


