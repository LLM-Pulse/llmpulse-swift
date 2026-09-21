# AIModelInsightsAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAiModelInsightsSummary**](AIModelInsightsAPI.md#getaimodelinsightssummary) | **GET** /reports/ai_model_insights/summary | AI Model Insights summary
[**getAiModelPositionDistribution**](AIModelInsightsAPI.md#getaimodelpositiondistribution) | **GET** /reports/ai_model_insights/position_distribution | Position distribution comparison
[**getAiOverviewResults**](AIModelInsightsAPI.md#getaioverviewresults) | **GET** /reports/ai_model_insights/ai_overview_results | Google AI Overview result availability


# **getAiModelInsightsSummary**
```swift
    open class func getAiModelInsightsSummary(projectId: Int, range: Int? = nil, from: Date? = nil, to: Date? = nil, granularity: Granularity_getAiModelInsightsSummary? = nil, collectionId: String? = nil, countryCode: String? = nil, languageCode: String? = nil, promptType: String? = nil, brandKind: BrandKind_getAiModelInsightsSummary? = nil, competitors: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

AI Model Insights summary

Per-model mentions, citations, brand net sentiment with raw counts, weighted visibility totals/shares, plus actor matrices. All actor entries use the standard shape `{ type, id, competitor_id, name, domain }` with bare (scheme-less) domains.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let range = 987 // Int | Number of days to look back (alternative to from/to) (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (optional)
let granularity = "granularity_example" // String |  (optional)
let collectionId = "collectionId_example" // String | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (optional)
let countryCode = "countryCode_example" // String | One ISO country code or a comma-separated list (e.g. US,GB,DE) (optional)
let languageCode = "languageCode_example" // String | One ISO language code or a comma-separated list (e.g. en,es,de) (optional)
let promptType = "promptType_example" // String | One prompt type or a comma-separated list: informational, navigational, commercial, transactional (optional)
let brandKind = "brandKind_example" // String | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (optional)
let competitors = "competitors_example" // String | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) (optional)

// AI Model Insights summary
AIModelInsightsAPI.getAiModelInsightsSummary(projectId: projectId, range: range, from: from, to: to, granularity: granularity, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, promptType: promptType, brandKind: brandKind, competitors: competitors) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **Int** | Project ID | 
 **range** | **Int** | Number of days to look back (alternative to from/to) | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **granularity** | **String** |  | [optional] 
 **collectionId** | **String** | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **countryCode** | **String** | One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **languageCode** | **String** | One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **promptType** | **String** | One prompt type or a comma-separated list: informational, navigational, commercial, transactional | [optional] 
 **brandKind** | **String** | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **competitors** | **String** | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAiModelPositionDistribution**
```swift
    open class func getAiModelPositionDistribution(projectId: Int, range: Int? = nil, from: Date? = nil, to: Date? = nil, granularity: Granularity_getAiModelPositionDistribution? = nil, collectionId: String? = nil, countryCode: String? = nil, languageCode: String? = nil, promptType: String? = nil, brandKind: BrandKind_getAiModelPositionDistribution? = nil, model: Model_getAiModelPositionDistribution? = nil, brand1: Int? = nil, brand2: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Position distribution comparison

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let range = 987 // Int | Number of days to look back (alternative to from/to) (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (optional)
let granularity = "granularity_example" // String |  (optional)
let collectionId = "collectionId_example" // String | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (optional)
let countryCode = "countryCode_example" // String | One ISO country code or a comma-separated list (e.g. US,GB,DE) (optional)
let languageCode = "languageCode_example" // String | One ISO language code or a comma-separated list (e.g. en,es,de) (optional)
let promptType = "promptType_example" // String | One prompt type or a comma-separated list: informational, navigational, commercial, transactional (optional)
let brandKind = "brandKind_example" // String | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (optional)
let model = "model_example" // String | Filter by AI model. Models the API key's user has not enabled are silently dropped. (optional)
let brand1 = 987 // Int | Competitor ID for the first comparison brand (omit to compare project brand) (optional)
let brand2 = 987 // Int |  (optional)

// Position distribution comparison
AIModelInsightsAPI.getAiModelPositionDistribution(projectId: projectId, range: range, from: from, to: to, granularity: granularity, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, promptType: promptType, brandKind: brandKind, model: model, brand1: brand1, brand2: brand2) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **Int** | Project ID | 
 **range** | **Int** | Number of days to look back (alternative to from/to) | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **granularity** | **String** |  | [optional] 
 **collectionId** | **String** | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **countryCode** | **String** | One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **languageCode** | **String** | One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **promptType** | **String** | One prompt type or a comma-separated list: informational, navigational, commercial, transactional | [optional] 
 **brandKind** | **String** | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **model** | **String** | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **brand1** | **Int** | Competitor ID for the first comparison brand (omit to compare project brand) | [optional] 
 **brand2** | **Int** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAiOverviewResults**
```swift
    open class func getAiOverviewResults(projectId: Int, range: Int? = nil, from: Date? = nil, to: Date? = nil, granularity: Granularity_getAiOverviewResults? = nil, collectionId: String? = nil, countryCode: String? = nil, languageCode: String? = nil, promptType: String? = nil, brandKind: BrandKind_getAiOverviewResults? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Google AI Overview result availability

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let range = 987 // Int | Number of days to look back (alternative to from/to) (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (optional)
let granularity = "granularity_example" // String |  (optional)
let collectionId = "collectionId_example" // String | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (optional)
let countryCode = "countryCode_example" // String | One ISO country code or a comma-separated list (e.g. US,GB,DE) (optional)
let languageCode = "languageCode_example" // String | One ISO language code or a comma-separated list (e.g. en,es,de) (optional)
let promptType = "promptType_example" // String | One prompt type or a comma-separated list: informational, navigational, commercial, transactional (optional)
let brandKind = "brandKind_example" // String | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (optional)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)

// Google AI Overview result availability
AIModelInsightsAPI.getAiOverviewResults(projectId: projectId, range: range, from: from, to: to, granularity: granularity, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, promptType: promptType, brandKind: brandKind, page: page, perPage: perPage) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **Int** | Project ID | 
 **range** | **Int** | Number of days to look back (alternative to from/to) | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **granularity** | **String** |  | [optional] 
 **collectionId** | **String** | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **countryCode** | **String** | One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **languageCode** | **String** | One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **promptType** | **String** | One prompt type or a comma-separated list: informational, navigational, commercial, transactional | [optional] 
 **brandKind** | **String** | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

