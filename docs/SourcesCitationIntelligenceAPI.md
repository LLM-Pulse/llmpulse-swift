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

Unavailable page content keeps the cited URL and citation metrics. Page metadata/content and unknown brand_mentioned/competitor_mentioned return null; content_gap_status is content_unavailable (or missing_page_cache). Mention arrays stay empty until usable content has completed analysis. status_code shows a saved successful response or observed 404/410; other crawl failures and error_message are hidden. last_crawled_at dates the saved copy. Domain/host crawled_urls_count counts usable copies; mention counts are null when no URL has completed analysis.

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
    open class func getCitedUrlDetail(projectId: Int, urlSha256: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Cited URL detail

Unavailable page content keeps the cited URL and citation metrics. Page metadata/content and unknown brand_mentioned/competitor_mentioned return null; content_gap_status is content_unavailable (or missing_page_cache). Mention arrays stay empty until usable content has completed analysis. status_code shows a saved successful response or observed 404/410; other crawl failures and error_message are hidden. last_crawled_at dates the saved copy. Domain/host crawled_urls_count counts usable copies; mention counts are null when no URL has completed analysis.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let urlSha256 = "urlSha256_example" // String | 64-character hex SHA-256 of the cited URL

// Cited URL detail
SourcesCitationIntelligenceAPI.getCitedUrlDetail(projectId: projectId, urlSha256: urlSha256) { (response, error) in
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

# **getMentionsByCitingDomain**
```swift
    open class func getMentionsByCitingDomain(projectId: Int, domains: [String], model: Model_getMentionsByCitingDomain? = nil, collectionId: GetTimeseriesCollectionIdParameter? = nil, countryCode: String? = nil, languageCode: String? = nil, prompt: Int? = nil, brandKind: BrandKind_getMentionsByCitingDomain? = nil, from: Date? = nil, to: Date? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Mention share by citing domain

For the responses where each given source domain is cited, returns the share of those responses that mention the brand vs each competitor (brand + competitors sum to 100% per domain). Pass multiple domains to get the whole matrix in one call.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let domains = ["inner_example"] // [String] | Source domains to analyze, e.g. domains[]=gmac.com&domains[]=educaweb.com
let model = "model_example" // String | Filter by AI model. Models the API key's user has not enabled are silently dropped. (optional)
let collectionId = getTimeseries_collection_id_parameter() // GetTimeseriesCollectionIdParameter | One collection/tag ID or a comma-separated list of IDs (optional)
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
 **domains** | [**[String]**](String.md) | Source domains to analyze, e.g. domains[]&#x3D;gmac.com&amp;domains[]&#x3D;educaweb.com | 
 **model** | **String** | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collectionId** | [**GetTimeseriesCollectionIdParameter**](.md) | One collection/tag ID or a comma-separated list of IDs | [optional] 
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
    open class func listCitationGroups(projectId: Int, view: View_listCitationGroups? = nil, page: Int? = nil, perPage: Int? = nil, order: Order_listCitationGroups? = nil, direction: Direction_listCitationGroups? = nil, model: Model_listCitationGroups? = nil, collectionId: GetTimeseriesCollectionIdParameter? = nil, countryCode: String? = nil, languageCode: String? = nil, prompt: Int? = nil, from: Date? = nil, to: Date? = nil, query: String? = nil, sourceType: SourceType_listCitationGroups? = nil, sentiment: Sentiment_listCitationGroups? = nil, contentGap: ContentGap_listCitationGroups? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Grouped citation intelligence

Grouped citation intelligence by url / domain / host with per-model breakdown, citation rate, and avg citation position. Counts and citation rate include visible citations and background source references. Average position ignores rows with position=0. Owned and competitor source matching honor the project's exact-subdomain setting. Filter vocabulary aligns with `source_type` returned by the API. Unavailable page content keeps the cited URL and citation metrics. Page metadata/content and unknown brand_mentioned/competitor_mentioned return null; content_gap_status is content_unavailable (or missing_page_cache). Mention arrays stay empty until usable content has completed analysis. status_code shows a saved successful response or observed 404/410; other crawl failures and error_message are hidden. last_crawled_at dates the saved copy. Domain/host crawled_urls_count counts usable copies; mention counts are null when no URL has completed analysis.

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
let model = "model_example" // String | Filter by AI model. Models the API key's user has not enabled are silently dropped. (optional)
let collectionId = getTimeseries_collection_id_parameter() // GetTimeseriesCollectionIdParameter | One collection/tag ID or a comma-separated list of IDs (optional)
let countryCode = "countryCode_example" // String | One ISO country code or a comma-separated list (e.g. US,GB,DE) (optional)
let languageCode = "languageCode_example" // String | One ISO language code or a comma-separated list (e.g. en,es,de) (optional)
let prompt = 987 // Int | Filter by prompt ID (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (optional)
let query = "query_example" // String |  (optional)
let sourceType = "sourceType_example" // String |  (optional)
let sentiment = "sentiment_example" // String |  (optional)
let contentGap = "contentGap_example" // String |  (optional)

// Grouped citation intelligence
SourcesCitationIntelligenceAPI.listCitationGroups(projectId: projectId, view: view, page: page, perPage: perPage, order: order, direction: direction, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, prompt: prompt, from: from, to: to, query: query, sourceType: sourceType, sentiment: sentiment, contentGap: contentGap) { (response, error) in
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
 **model** | **String** | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collectionId** | [**GetTimeseriesCollectionIdParameter**](.md) | One collection/tag ID or a comma-separated list of IDs | [optional] 
 **countryCode** | **String** | One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **languageCode** | **String** | One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **prompt** | **Int** | Filter by prompt ID | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **query** | **String** |  | [optional] 
 **sourceType** | **String** |  | [optional] 
 **sentiment** | **String** |  | [optional] 
 **contentGap** | **String** |  | [optional] 

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
    open class func listSources(projectId: Int, page: Int? = nil, perPage: Int? = nil, model: Model_listSources? = nil, collectionId: GetTimeseriesCollectionIdParameter? = nil, countryCode: String? = nil, languageCode: String? = nil, prompt: Int? = nil, from: Date? = nil, to: Date? = nil, sourceType: SourceType_listSources? = nil, mentionFilter: MentionFilter_listSources? = nil, competitors: String? = nil, output: Output_listSources? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List source URLs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let model = "model_example" // String | Filter by AI model. Models the API key's user has not enabled are silently dropped. (optional)
let collectionId = getTimeseries_collection_id_parameter() // GetTimeseriesCollectionIdParameter | One collection/tag ID or a comma-separated list of IDs (optional)
let countryCode = "countryCode_example" // String | One ISO country code or a comma-separated list (e.g. US,GB,DE) (optional)
let languageCode = "languageCode_example" // String | One ISO language code or a comma-separated list (e.g. en,es,de) (optional)
let prompt = 987 // Int | Filter by prompt ID (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (optional)
let sourceType = "sourceType_example" // String | Filter by source ownership. Owned and competitor matching honor the project's exact-subdomain setting. (optional)
let mentionFilter = "mentionFilter_example" // String | Filter by which brands are mentioned, as a two-axis matrix (your brand x competitors): mentions_you / not_mentions_you, mentions_competitor / not_mentions_competitor, and the four combined cells you_and_competitor, competitor_not_you (a rival wins and you are absent), you_not_competitor, no_brands (no tracked brand appears, i.e. open space). Combine with 'competitors' to narrow the competitor side to specific rivals; on a negative cell that reads 'none of these'. On /dimensions/sources it applies to the crawled content of each cited page instead of the answer text. The legacy value 'competitors_only' is still accepted as an alias of competitor_not_you. (optional)
let competitors = "competitors_example" // String | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) (optional)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// List source URLs
SourcesCitationIntelligenceAPI.listSources(projectId: projectId, page: page, perPage: perPage, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, prompt: prompt, from: from, to: to, sourceType: sourceType, mentionFilter: mentionFilter, competitors: competitors, output: output) { (response, error) in
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
 **model** | **String** | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collectionId** | [**GetTimeseriesCollectionIdParameter**](.md) | One collection/tag ID or a comma-separated list of IDs | [optional] 
 **countryCode** | **String** | One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **languageCode** | **String** | One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **prompt** | **Int** | Filter by prompt ID | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **sourceType** | **String** | Filter by source ownership. Owned and competitor matching honor the project&#39;s exact-subdomain setting. | [optional] 
 **mentionFilter** | **String** | Filter by which brands are mentioned, as a two-axis matrix (your brand x competitors): mentions_you / not_mentions_you, mentions_competitor / not_mentions_competitor, and the four combined cells you_and_competitor, competitor_not_you (a rival wins and you are absent), you_not_competitor, no_brands (no tracked brand appears, i.e. open space). Combine with &#39;competitors&#39; to narrow the competitor side to specific rivals; on a negative cell that reads &#39;none of these&#39;. On /dimensions/sources it applies to the crawled content of each cited page instead of the answer text. The legacy value &#39;competitors_only&#39; is still accepted as an alias of competitor_not_you. | [optional] 
 **competitors** | **String** | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) | [optional] 
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

