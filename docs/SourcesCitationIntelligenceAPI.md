# SourcesCitationIntelligenceAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCitedUrlContent**](SourcesCitationIntelligenceAPI.md#getcitedurlcontent) | **GET** /citation_intelligence/urls/{url_sha256}/content | Cited URL cached content
[**getCitedUrlDetail**](SourcesCitationIntelligenceAPI.md#getcitedurldetail) | **GET** /citation_intelligence/urls/{url_sha256} | Cited URL detail
[**getMentionsByCitingDomain**](SourcesCitationIntelligenceAPI.md#getmentionsbycitingdomain) | **GET** /citation_intelligence/mentions_by_domain | Mention share by citing domain
[**listCitationGroups**](SourcesCitationIntelligenceAPI.md#listcitationgroups) | **GET** /citation_intelligence/groups | Grouped citation intelligence
[**listCitedUrlOccurrences**](SourcesCitationIntelligenceAPI.md#listcitedurloccurrences) | **GET** /citation_intelligence/urls/{url_sha256}/occurrences | Cited URL occurrences
[**listSources**](SourcesCitationIntelligenceAPI.md#listsources) | **GET** /dimensions/sources | List source URLs


# **getCitedUrlContent**
```swift
    open class func getCitedUrlContent(projectId: Int, urlSha256: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Cited URL cached content

Unavailable page content keeps the cited URL and citation metrics. Page metadata/content and unknown brand_mentioned/competitor_mentioned return null. content_gap_status is content_unavailable (or missing_page_cache) without usable content, and mentions_not_processed when the page has usable content but its mention analysis has not completed for this project. Mention fields (brand_mentioned, competitor_mentioned, brand_position, brands, mentions, content_gap_status) describe the analysis for the requesting project: a page not yet analyzed for it returns null (never false) brand_mentioned, competitor_mentioned and brand_position, empty brands and mentions arrays and page_cache.mentions_processed false. page_cache.mentions_processed is true exactly when brand_mentioned is not null. An analyzed page keeps its last result until a newer analysis replaces it. status_code shows a saved successful response or observed 404/410; other crawl failures and error_message are hidden. last_crawled_at dates the saved copy. Domain/host crawled_urls_count counts usable copies; brand_mentioned_urls_count and competitor_mentioned_urls_count count only URLs analyzed for the project and are null when none is.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let urlSha256 = "urlSha256_example" // String | 64-character hex SHA-256 of the cited URL

// Cited URL cached content
SourcesCitationIntelligenceAPI.getCitedUrlContent(projectId: projectId, urlSha256: urlSha256) { (response, error) in
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
 **urlSha256** | **String** | 64-character hex SHA-256 of the cited URL | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCitedUrlDetail**
```swift
    open class func getCitedUrlDetail(projectId: Int, urlSha256: String, model: Model_getCitedUrlDetail? = nil, collectionId: String? = nil, countryCode: String? = nil, languageCode: String? = nil, prompt: Int? = nil, brandKind: BrandKind_getCitedUrlDetail? = nil, from: Date? = nil, to: Date? = nil, sourceType: SourceType_getCitedUrlDetail? = nil, sentiment: Sentiment_getCitedUrlDetail? = nil, contentGap: ContentGap_getCitedUrlDetail? = nil, includeSeries: Bool? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Cited URL detail

Unavailable page content keeps the cited URL and citation metrics. Page metadata/content and unknown brand_mentioned/competitor_mentioned return null. content_gap_status is content_unavailable (or missing_page_cache) without usable content, and mentions_not_processed when the page has usable content but its mention analysis has not completed for this project. Mention fields (brand_mentioned, competitor_mentioned, brand_position, brands, mentions, content_gap_status) describe the analysis for the requesting project: a page not yet analyzed for it returns null (never false) brand_mentioned, competitor_mentioned and brand_position, empty brands and mentions arrays and page_cache.mentions_processed false. page_cache.mentions_processed is true exactly when brand_mentioned is not null. An analyzed page keeps its last result until a newer analysis replaces it. status_code shows a saved successful response or observed 404/410; other crawl failures and error_message are hidden. last_crawled_at dates the saved copy. Domain/host crawled_urls_count counts usable copies; brand_mentioned_urls_count and competitor_mentioned_urls_count count only URLs analyzed for the project and are null when none is. The filters narrow stats and citation_series alike. citation_series (with include_series=true) holds the answers citing the URL under the same filters: granularity (day, week or month, from the account tracking cadence, with weeks when a daily account spans more than 60 days, starting on Monday), total (equal to total_responses), by_model (answers per AI model, largest first, which can include enabled models outside the seven the model filter accepts) and data, one { date, value } point per period that holds a filtered answer, so a zero means answers ran and none cited it. Periods date each answer by its executed_at in Europe/Madrid time, the column from and to filter.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let urlSha256 = "urlSha256_example" // String | 64-character hex SHA-256 of the cited URL
let model = "model_example" // String | Filter by one AI model. Only chatgpt, ai_overview, ai_mode, perplexity, gemini, naver_ai and baidu_ai are accepted: any other value, including another model enabled for the API key's user, returns 422 ERR_INVALID_PARAM (invalid model). One of those seven that the user has not enabled also returns 422 ERR_INVALID_PARAM, with the valid values in the message. (optional)
let collectionId = "collectionId_example" // String | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (optional)
let countryCode = "countryCode_example" // String | One ISO country code or a comma-separated list (e.g. US,GB,DE) (optional)
let languageCode = "languageCode_example" // String | One ISO language code or a comma-separated list (e.g. en,es,de) (optional)
let prompt = 987 // Int | Filter by prompt ID (optional)
let brandKind = "brandKind_example" // String | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (optional)
let sourceType = "sourceType_example" // String |  (optional)
let sentiment = "sentiment_example" // String |  (optional)
let contentGap = "contentGap_example" // String | mentioned: the cited page mentions your brand. gap: it mentions a competitor but not your brand. Only pages with usable content whose mention analysis has completed for this project match. (optional)
let includeSeries = true // Bool | Adds citation_series. Without it the response is unchanged. (optional) (default to false)

// Cited URL detail
SourcesCitationIntelligenceAPI.getCitedUrlDetail(projectId: projectId, urlSha256: urlSha256, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, prompt: prompt, brandKind: brandKind, from: from, to: to, sourceType: sourceType, sentiment: sentiment, contentGap: contentGap, includeSeries: includeSeries) { (response, error) in
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
 **urlSha256** | **String** | 64-character hex SHA-256 of the cited URL | 
 **model** | **String** | Filter by one AI model. Only chatgpt, ai_overview, ai_mode, perplexity, gemini, naver_ai and baidu_ai are accepted: any other value, including another model enabled for the API key&#39;s user, returns 422 ERR_INVALID_PARAM (invalid model). One of those seven that the user has not enabled also returns 422 ERR_INVALID_PARAM, with the valid values in the message. | [optional] 
 **collectionId** | **String** | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **countryCode** | **String** | One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **languageCode** | **String** | One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **prompt** | **Int** | Filter by prompt ID | [optional] 
 **brandKind** | **String** | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **sourceType** | **String** |  | [optional] 
 **sentiment** | **String** |  | [optional] 
 **contentGap** | **String** | mentioned: the cited page mentions your brand. gap: it mentions a competitor but not your brand. Only pages with usable content whose mention analysis has completed for this project match. | [optional] 
 **includeSeries** | **Bool** | Adds citation_series. Without it the response is unchanged. | [optional] [default to false]

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMentionsByCitingDomain**
```swift
    open class func getMentionsByCitingDomain(projectId: Int, domains: [String], model: Model_getMentionsByCitingDomain? = nil, collectionId: String? = nil, countryCode: String? = nil, languageCode: String? = nil, prompt: Int? = nil, brandKind: BrandKind_getMentionsByCitingDomain? = nil, from: Date? = nil, to: Date? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Mention share by citing domain

For the responses where each given source domain is cited, returns the share of those responses that mention the brand vs each competitor (brand + competitors sum to 100% per domain). Pass multiple domains to get the whole matrix in one call.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let domains = ["inner_example"] // [String] | Source domains to analyze: one domain or a comma-separated list, e.g. domains=gmac.com,educaweb.com. The bracket form domains[]=gmac.com&domains[]=educaweb.com is also accepted.
let model = "model_example" // String | Filter by one AI model. Only chatgpt, ai_overview, ai_mode, perplexity, gemini, naver_ai and baidu_ai are accepted: any other value, including another model enabled for the API key's user, returns 422 ERR_INVALID_PARAM (invalid model). One of those seven that the user has not enabled also returns 422 ERR_INVALID_PARAM, with the valid values in the message. (optional)
let collectionId = "collectionId_example" // String | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (optional)
let countryCode = "countryCode_example" // String | One ISO country code or a comma-separated list (e.g. US,GB,DE) (optional)
let languageCode = "languageCode_example" // String | One ISO language code or a comma-separated list (e.g. en,es,de) (optional)
let prompt = 987 // Int | Filter by prompt ID (optional)
let brandKind = "brandKind_example" // String | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (optional)

// Mention share by citing domain
SourcesCitationIntelligenceAPI.getMentionsByCitingDomain(projectId: projectId, domains: domains, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, prompt: prompt, brandKind: brandKind, from: from, to: to) { (response, error) in
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
 **domains** | [**[String]**](String.md) | Source domains to analyze: one domain or a comma-separated list, e.g. domains&#x3D;gmac.com,educaweb.com. The bracket form domains[]&#x3D;gmac.com&amp;domains[]&#x3D;educaweb.com is also accepted. | 
 **model** | **String** | Filter by one AI model. Only chatgpt, ai_overview, ai_mode, perplexity, gemini, naver_ai and baidu_ai are accepted: any other value, including another model enabled for the API key&#39;s user, returns 422 ERR_INVALID_PARAM (invalid model). One of those seven that the user has not enabled also returns 422 ERR_INVALID_PARAM, with the valid values in the message. | [optional] 
 **collectionId** | **String** | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **countryCode** | **String** | One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **languageCode** | **String** | One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **prompt** | **Int** | Filter by prompt ID | [optional] 
 **brandKind** | **String** | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCitationGroups**
```swift
    open class func listCitationGroups(projectId: Int, view: View_listCitationGroups? = nil, page: Int? = nil, perPage: Int? = nil, order: Order_listCitationGroups? = nil, direction: Direction_listCitationGroups? = nil, model: Model_listCitationGroups? = nil, collectionId: String? = nil, countryCode: String? = nil, languageCode: String? = nil, prompt: Int? = nil, brandKind: BrandKind_listCitationGroups? = nil, from: Date? = nil, to: Date? = nil, key: String? = nil, includeSeries: Bool? = nil, query: String? = nil, sourceType: SourceType_listCitationGroups? = nil, sentiment: Sentiment_listCitationGroups? = nil, contentGap: ContentGap_listCitationGroups? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Grouped citation intelligence

Grouped citation intelligence by url / domain / host with per-model breakdown, citation rate, and avg citation position. Counts and citation rate include visible citations and background source references. Average position ignores rows with position=0. Owned and competitor source matching honor the project's exact-subdomain setting. Filter vocabulary aligns with `source_type` returned by the API. Unavailable page content keeps the cited URL and citation metrics. Page metadata/content and unknown brand_mentioned/competitor_mentioned return null. content_gap_status is content_unavailable (or missing_page_cache) without usable content, and mentions_not_processed when the page has usable content but its mention analysis has not completed for this project. Mention fields (brand_mentioned, competitor_mentioned, brand_position, brands, mentions, content_gap_status) describe the analysis for the requesting project: a page not yet analyzed for it returns null (never false) brand_mentioned, competitor_mentioned and brand_position, empty brands and mentions arrays and page_cache.mentions_processed false. page_cache.mentions_processed is true exactly when brand_mentioned is not null. An analyzed page keeps its last result until a newer analysis replaces it. status_code shows a saved successful response or observed 404/410; other crawl failures and error_message are hidden. last_crawled_at dates the saved copy. Domain/host crawled_urls_count counts usable copies; brand_mentioned_urls_count and competitor_mentioned_urls_count count only URLs analyzed for the project and are null when none is. Pass key to read one group; brand_kind filters by the brand focus of the prompts, like the source page. citation_series (with include_series=true) holds the answers citing the URL, domain or host under the same filters: granularity (day, week or month, from the account tracking cadence, with weeks when a daily account spans more than 60 days, starting on Monday), total (equal to total_responses), by_model (answers per AI model, largest first, which can include enabled models outside the seven the model filter accepts) and data, one { date, value } point per period that holds a filtered answer, so a zero means answers ran and none cited it. Periods date each answer by its executed_at in Europe/Madrid time, the column from and to filter.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let view = "view_example" // String |  (optional) (default to .url)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let order = "order_example" // String |  (optional)
let direction = "direction_example" // String |  (optional)
let model = "model_example" // String | Filter by one AI model. Only chatgpt, ai_overview, ai_mode, perplexity, gemini, naver_ai and baidu_ai are accepted: any other value, including another model enabled for the API key's user, returns 422 ERR_INVALID_PARAM (invalid model). One of those seven that the user has not enabled also returns 422 ERR_INVALID_PARAM, with the valid values in the message. (optional)
let collectionId = "collectionId_example" // String | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (optional)
let countryCode = "countryCode_example" // String | One ISO country code or a comma-separated list (e.g. US,GB,DE) (optional)
let languageCode = "languageCode_example" // String | One ISO language code or a comma-separated list (e.g. en,es,de) (optional)
let prompt = 987 // Int | Filter by prompt ID (optional)
let brandKind = "brandKind_example" // String | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (optional)
let key = "key_example" // String | Return only this group of the chosen view: a domain (view=domain), a host (view=host) or a cited URL exactly as listed (view=url). Domains and hosts match case-insensitively, without www. A view=url key is one raw URL, so its variants (a tracking parameter, a trailing slash) stay separate rows; GET /citation_intelligence/urls/{url_sha256} merges them, as the app does. No match returns an empty list (total 0), not an error. (optional)
let includeSeries = true // Bool | Requires key, else 422 ERR_INVALID_PARAM. Adds citation_series to the group's row. (optional) (default to false)
let query = "query_example" // String |  (optional)
let sourceType = "sourceType_example" // String |  (optional)
let sentiment = "sentiment_example" // String |  (optional)
let contentGap = "contentGap_example" // String | mentioned: the cited page mentions your brand. gap: it mentions a competitor but not your brand. Only pages with usable content whose mention analysis has completed for this project match. (optional)

// Grouped citation intelligence
SourcesCitationIntelligenceAPI.listCitationGroups(projectId: projectId, view: view, page: page, perPage: perPage, order: order, direction: direction, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, prompt: prompt, brandKind: brandKind, from: from, to: to, key: key, includeSeries: includeSeries, query: query, sourceType: sourceType, sentiment: sentiment, contentGap: contentGap) { (response, error) in
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
 **view** | **String** |  | [optional] [default to .url]
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]
 **order** | **String** |  | [optional] 
 **direction** | **String** |  | [optional] 
 **model** | **String** | Filter by one AI model. Only chatgpt, ai_overview, ai_mode, perplexity, gemini, naver_ai and baidu_ai are accepted: any other value, including another model enabled for the API key&#39;s user, returns 422 ERR_INVALID_PARAM (invalid model). One of those seven that the user has not enabled also returns 422 ERR_INVALID_PARAM, with the valid values in the message. | [optional] 
 **collectionId** | **String** | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **countryCode** | **String** | One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **languageCode** | **String** | One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **prompt** | **Int** | Filter by prompt ID | [optional] 
 **brandKind** | **String** | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **key** | **String** | Return only this group of the chosen view: a domain (view&#x3D;domain), a host (view&#x3D;host) or a cited URL exactly as listed (view&#x3D;url). Domains and hosts match case-insensitively, without www. A view&#x3D;url key is one raw URL, so its variants (a tracking parameter, a trailing slash) stay separate rows; GET /citation_intelligence/urls/{url_sha256} merges them, as the app does. No match returns an empty list (total 0), not an error. | [optional] 
 **includeSeries** | **Bool** | Requires key, else 422 ERR_INVALID_PARAM. Adds citation_series to the group&#39;s row. | [optional] [default to false]
 **query** | **String** |  | [optional] 
 **sourceType** | **String** |  | [optional] 
 **sentiment** | **String** |  | [optional] 
 **contentGap** | **String** | mentioned: the cited page mentions your brand. gap: it mentions a competitor but not your brand. Only pages with usable content whose mention analysis has completed for this project match. | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCitedUrlOccurrences**
```swift
    open class func listCitedUrlOccurrences(projectId: Int, urlSha256: String, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Cited URL occurrences

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let urlSha256 = "urlSha256_example" // String | 64-character hex SHA-256 of the cited URL
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)

// Cited URL occurrences
SourcesCitationIntelligenceAPI.listCitedUrlOccurrences(projectId: projectId, urlSha256: urlSha256, page: page, perPage: perPage) { (response, error) in
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
 **urlSha256** | **String** | 64-character hex SHA-256 of the cited URL | 
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSources**
```swift
    open class func listSources(projectId: Int, page: Int? = nil, perPage: Int? = nil, model: Model_listSources? = nil, collectionId: String? = nil, countryCode: String? = nil, languageCode: String? = nil, prompt: Int? = nil, from: Date? = nil, to: Date? = nil, sourceType: SourceType_listSources? = nil, mentionFilter: MentionFilter_listSources? = nil, competitors: String? = nil, output: Output_listSources? = nil, promptType: String? = nil, brandKind: BrandKind_listSources? = nil, range: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List source URLs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let model = "model_example" // String | Filter by one AI model. It must be a model enabled for the API key's user: an unknown value, or a model the user has not enabled, returns 422 ERR_INVALID_PARAM with the valid values in the message. (optional)
let collectionId = "collectionId_example" // String | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (optional)
let countryCode = "countryCode_example" // String | One ISO country code or a comma-separated list (e.g. US,GB,DE) (optional)
let languageCode = "languageCode_example" // String | One ISO language code or a comma-separated list (e.g. en,es,de) (optional)
let prompt = 987 // Int | Filter by prompt ID (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (optional)
let sourceType = "sourceType_example" // String | Filter by source ownership. Owned and competitor matching honor the project's exact-subdomain setting. Any other value, including a differently cased one, returns ERR_INVALID_PARAM. (optional)
let mentionFilter = "mentionFilter_example" // String | Filter by which brands are mentioned, as a two-axis matrix (your brand x competitors): mentions_you / not_mentions_you, mentions_competitor / not_mentions_competitor, and the four combined cells you_and_competitor, competitor_not_you (a rival wins and you are absent), you_not_competitor, no_brands (no tracked brand appears, i.e. open space). Combine with 'competitors' to narrow the competitor side to specific rivals; on a negative cell that reads 'none of these'. On /dimensions/sources it applies to the crawled content of each cited page instead of the answer text. The legacy value 'competitors_only' is still accepted as an alias of competitor_not_you. (optional)
let competitors = "competitors_example" // String | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) (optional)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)
let promptType = "promptType_example" // String | One prompt type or a comma-separated list: informational, navigational, commercial, transactional (optional)
let brandKind = "brandKind_example" // String | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (optional)
let range = 987 // Int | Number of days to look back (alternative to from/to) (optional)

// List source URLs
SourcesCitationIntelligenceAPI.listSources(projectId: projectId, page: page, perPage: perPage, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, prompt: prompt, from: from, to: to, sourceType: sourceType, mentionFilter: mentionFilter, competitors: competitors, output: output, promptType: promptType, brandKind: brandKind, range: range) { (response, error) in
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
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]
 **model** | **String** | Filter by one AI model. It must be a model enabled for the API key&#39;s user: an unknown value, or a model the user has not enabled, returns 422 ERR_INVALID_PARAM with the valid values in the message. | [optional] 
 **collectionId** | **String** | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **countryCode** | **String** | One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **languageCode** | **String** | One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **prompt** | **Int** | Filter by prompt ID | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **sourceType** | **String** | Filter by source ownership. Owned and competitor matching honor the project&#39;s exact-subdomain setting. Any other value, including a differently cased one, returns ERR_INVALID_PARAM. | [optional] 
 **mentionFilter** | **String** | Filter by which brands are mentioned, as a two-axis matrix (your brand x competitors): mentions_you / not_mentions_you, mentions_competitor / not_mentions_competitor, and the four combined cells you_and_competitor, competitor_not_you (a rival wins and you are absent), you_not_competitor, no_brands (no tracked brand appears, i.e. open space). Combine with &#39;competitors&#39; to narrow the competitor side to specific rivals; on a negative cell that reads &#39;none of these&#39;. On /dimensions/sources it applies to the crawled content of each cited page instead of the answer text. The legacy value &#39;competitors_only&#39; is still accepted as an alias of competitor_not_you. | [optional] 
 **competitors** | **String** | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) | [optional] 
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 
 **promptType** | **String** | One prompt type or a comma-separated list: informational, navigational, commercial, transactional | [optional] 
 **brandKind** | **String** | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **range** | **Int** | Number of days to look back (alternative to from/to) | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

