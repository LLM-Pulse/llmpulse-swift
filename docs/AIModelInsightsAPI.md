# AIModelInsightsAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAiModelInsightsSummary**](AIModelInsightsAPI.md#getaimodelinsightssummary) | **GET** /reports/ai_model_insights/summary | AI Model Insights summary
[**getAiModelPositionDistribution**](AIModelInsightsAPI.md#getaimodelpositiondistribution) | **GET** /reports/ai_model_insights/position_distribution | Position distribution comparison
[**getAiOverviewResults**](AIModelInsightsAPI.md#getaioverviewresults) | **GET** /reports/ai_model_insights/ai_overview_results | Google AI Overview result availability
[**getDeclinedAnswers**](AIModelInsightsAPI.md#getdeclinedanswers) | **GET** /reports/ai_model_insights/declined_answers | Declined answers (decline rate)


# **getAiModelInsightsSummary**
```swift
    open class func getAiModelInsightsSummary(projectId: Int, range: Int? = nil, from: Date? = nil, to: Date? = nil, granularity: Granularity_getAiModelInsightsSummary? = nil, collectionId: String? = nil, countryCode: String? = nil, languageCode: String? = nil, promptType: String? = nil, brandKind: BrandKind_getAiModelInsightsSummary? = nil, competitors: String? = nil, completion: @escaping (_ data: AiModelInsightsSummaryResponse?, _ error: Error?) -> Void)
```

AI Model Insights summary

Per-model mentions, citations, brand net sentiment with raw counts, weighted visibility totals/shares, plus actor matrices. All actor entries use the standard shape `{ type, id, competitor_id, name, domain }` with bare (scheme-less) domains. Rows cover the AI models the account has enabled or that answered in the window. A share, net sentiment or market share value with nothing behind it is null; counts, totals and weighted visibility scores stay 0. The sentiment sections (brand_net_sentiment_by_model and sentiment_market_share) need the Growth plan or above: below it they are left out and listed in `plan_required_fields`, which is always present and empty when nothing is left out.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let range = 987 // Int | Number of days to look back (alternative to from/to, which win when both are given). A value that is not a plain positive number returns 422 ERR_INVALID_PARAM, even beside from/to. (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (optional)
let granularity = "granularity_example" // String |  (optional)
let collectionId = "collectionId_example" // String | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (optional)
let countryCode = "countryCode_example" // String | One ISO country code or a comma-separated list (e.g. US,GB,DE) (optional)
let languageCode = "languageCode_example" // String | One ISO language code or a comma-separated list (e.g. en,es,de) (optional)
let promptType = "promptType_example" // String | One prompt type or a comma-separated list: informational, navigational, commercial, transactional (optional)
let brandKind = "brandKind_example" // String | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (optional)
let competitors = "competitors_example" // String | Comma-separated competitor IDs (a malformed or unknown ID returns ERR_INVALID_PARAM) (optional)

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
 **range** | **Int** | Number of days to look back (alternative to from/to, which win when both are given). A value that is not a plain positive number returns 422 ERR_INVALID_PARAM, even beside from/to. | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **granularity** | **String** |  | [optional] 
 **collectionId** | **String** | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **countryCode** | **String** | One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **languageCode** | **String** | One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **promptType** | **String** | One prompt type or a comma-separated list: informational, navigational, commercial, transactional | [optional] 
 **brandKind** | **String** | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **competitors** | **String** | Comma-separated competitor IDs (a malformed or unknown ID returns ERR_INVALID_PARAM) | [optional] 

### Return type

[**AiModelInsightsSummaryResponse**](AiModelInsightsSummaryResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAiModelPositionDistribution**
```swift
    open class func getAiModelPositionDistribution(projectId: Int, range: Int? = nil, from: Date? = nil, to: Date? = nil, granularity: Granularity_getAiModelPositionDistribution? = nil, collectionId: String? = nil, countryCode: String? = nil, languageCode: String? = nil, promptType: String? = nil, brandKind: BrandKind_getAiModelPositionDistribution? = nil, model: Model_getAiModelPositionDistribution? = nil, brand1: Int? = nil, brand2: Int? = nil, completion: @escaping (_ data: AiModelPositionDistributionResponse?, _ error: Error?) -> Void)
```

Position distribution comparison

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let range = 987 // Int | Number of days to look back (alternative to from/to, which win when both are given). A value that is not a plain positive number returns 422 ERR_INVALID_PARAM, even beside from/to. (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (optional)
let granularity = "granularity_example" // String |  (optional)
let collectionId = "collectionId_example" // String | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (optional)
let countryCode = "countryCode_example" // String | One ISO country code or a comma-separated list (e.g. US,GB,DE) (optional)
let languageCode = "languageCode_example" // String | One ISO language code or a comma-separated list (e.g. en,es,de) (optional)
let promptType = "promptType_example" // String | One prompt type or a comma-separated list: informational, navigational, commercial, transactional (optional)
let brandKind = "brandKind_example" // String | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (optional)
let model = "model_example" // String | Restrict the comparison to one AI model of AI Model Insights, whether or not that model is enabled for the API key's user. Any other value returns 422 ERR_INVALID_PARAM (invalid model). (optional)
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
 **range** | **Int** | Number of days to look back (alternative to from/to, which win when both are given). A value that is not a plain positive number returns 422 ERR_INVALID_PARAM, even beside from/to. | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **granularity** | **String** |  | [optional] 
 **collectionId** | **String** | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **countryCode** | **String** | One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **languageCode** | **String** | One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **promptType** | **String** | One prompt type or a comma-separated list: informational, navigational, commercial, transactional | [optional] 
 **brandKind** | **String** | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **model** | **String** | Restrict the comparison to one AI model of AI Model Insights, whether or not that model is enabled for the API key&#39;s user. Any other value returns 422 ERR_INVALID_PARAM (invalid model). | [optional] 
 **brand1** | **Int** | Competitor ID for the first comparison brand (omit to compare project brand) | [optional] 
 **brand2** | **Int** |  | [optional] 

### Return type

[**AiModelPositionDistributionResponse**](AiModelPositionDistributionResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAiOverviewResults**
```swift
    open class func getAiOverviewResults(projectId: Int, range: Int? = nil, from: Date? = nil, to: Date? = nil, granularity: Granularity_getAiOverviewResults? = nil, collectionId: String? = nil, countryCode: String? = nil, languageCode: String? = nil, promptType: String? = nil, brandKind: BrandKind_getAiOverviewResults? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: AiOverviewResultsResponse?, _ error: Error?) -> Void)
```

Google AI Overview result availability

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let range = 987 // Int | Number of days to look back (alternative to from/to, which win when both are given). A value that is not a plain positive number returns 422 ERR_INVALID_PARAM, even beside from/to. (optional)
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
 **range** | **Int** | Number of days to look back (alternative to from/to, which win when both are given). A value that is not a plain positive number returns 422 ERR_INVALID_PARAM, even beside from/to. | [optional] 
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

[**AiOverviewResultsResponse**](AiOverviewResultsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeclinedAnswers**
```swift
    open class func getDeclinedAnswers(projectId: Int, range: Int? = nil, from: Date? = nil, to: Date? = nil, model: Model_getDeclinedAnswers? = nil, collectionId: String? = nil, countryCode: String? = nil, languageCode: String? = nil, promptType: String? = nil, brandKind: BrandKind_getDeclinedAnswers? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: AiModelDeclinedAnswersResponse?, _ error: Error?) -> Void)
```

Declined answers (decline rate)

The Declined answers tab of AI Model Insights. A model declines a prompt for its own safety filters (safety_filter) or because it refuses the topic itself, such as tobacco, gambling or alcohol (topic_refusal); today only Gemini declines. A declined answer counts as no answer and never lowers visibility. The chart has one point per tracking period at the account's cadence that holds an answer of the model, and the window starts at the tracking period holding its first day.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let range = 987 // Int | Number of days to look back (alternative to from/to, which win when both are given). A value that is not a plain positive number returns 422 ERR_INVALID_PARAM, even beside from/to. (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (optional)
let model = "model_example" // String | The model whose declines to read, whether or not it is enabled for the API key's user. Default: gemini. Any other model returns 422 ERR_INVALID_PARAM (invalid model). (optional)
let collectionId = "collectionId_example" // String | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (optional)
let countryCode = "countryCode_example" // String | One ISO country code or a comma-separated list (e.g. US,GB,DE) (optional)
let languageCode = "languageCode_example" // String | One ISO language code or a comma-separated list (e.g. en,es,de) (optional)
let promptType = "promptType_example" // String | One prompt type or a comma-separated list: informational, navigational, commercial, transactional (optional)
let brandKind = "brandKind_example" // String | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (optional)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)

// Declined answers (decline rate)
AIModelInsightsAPI.getDeclinedAnswers(projectId: projectId, range: range, from: from, to: to, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, promptType: promptType, brandKind: brandKind, page: page, perPage: perPage) { (response, error) in
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
 **range** | **Int** | Number of days to look back (alternative to from/to, which win when both are given). A value that is not a plain positive number returns 422 ERR_INVALID_PARAM, even beside from/to. | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **model** | **String** | The model whose declines to read, whether or not it is enabled for the API key&#39;s user. Default: gemini. Any other model returns 422 ERR_INVALID_PARAM (invalid model). | [optional] 
 **collectionId** | **String** | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **countryCode** | **String** | One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **languageCode** | **String** | One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **promptType** | **String** | One prompt type or a comma-separated list: informational, navigational, commercial, transactional | [optional] 
 **brandKind** | **String** | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]

### Return type

[**AiModelDeclinedAnswersResponse**](AiModelDeclinedAnswersResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

