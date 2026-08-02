# CitationIntelligenceAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCitedUrlContent**](CitationIntelligenceAPI.md#getcitedurlcontent) | **GET** /citation_intelligence/urls/{url_sha256}/content | Cited URL cached content
[**getCitedUrlDetail**](CitationIntelligenceAPI.md#getcitedurldetail) | **GET** /citation_intelligence/urls/{url_sha256} | Cited URL detail
[**getMentionsByCitingDomain**](CitationIntelligenceAPI.md#getmentionsbycitingdomain) | **GET** /citation_intelligence/mentions_by_domain | Mention share by citing domain
[**listCitationGroups**](CitationIntelligenceAPI.md#listcitationgroups) | **GET** /citation_intelligence/groups | Grouped citation intelligence
[**listCitedUrlOccurrences**](CitationIntelligenceAPI.md#listcitedurloccurrences) | **GET** /citation_intelligence/urls/{url_sha256}/occurrences | Cited URL occurrences


# **getCitedUrlContent**
```swift
    open class func getCitedUrlContent(projectId: Int, urlSha256: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Cited URL cached content

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let urlSha256 = "urlSha256_example" // String | 64-character hex SHA-256 of the cited URL

// Cited URL cached content
CitationIntelligenceAPI.getCitedUrlContent(projectId: projectId, urlSha256: urlSha256) { (response, error) in
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

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let urlSha256 = "urlSha256_example" // String | 64-character hex SHA-256 of the cited URL

// Cited URL detail
CitationIntelligenceAPI.getCitedUrlDetail(projectId: projectId, urlSha256: urlSha256) { (response, error) in
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
    open class func getMentionsByCitingDomain(projectId: Int, domains: [String], model: Model_getMentionsByCitingDomain? = nil, collectionId: Int? = nil, countryCode: String? = nil, languageCode: String? = nil, prompt: Int? = nil, from: Date? = nil, to: Date? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
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
let collectionId = 987 // Int |  (optional)
let countryCode = "countryCode_example" // String | ISO country code (e.g. US, GB, DE) (optional)
let languageCode = "languageCode_example" // String | ISO language code (e.g. en, es, de) (optional)
let prompt = 987 // Int | Filter by prompt ID (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)

// Mention share by citing domain
CitationIntelligenceAPI.getMentionsByCitingDomain(projectId: projectId, domains: domains, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, prompt: prompt, from: from, to: to) { (response, error) in
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
 **collectionId** | **Int** |  | [optional] 
 **countryCode** | **String** | ISO country code (e.g. US, GB, DE) | [optional] 
 **languageCode** | **String** | ISO language code (e.g. en, es, de) | [optional] 
 **prompt** | **Int** | Filter by prompt ID | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** |  | [optional] 

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
    open class func listCitationGroups(projectId: Int, view: View_listCitationGroups? = nil, page: Int? = nil, perPage: Int? = nil, order: Order_listCitationGroups? = nil, direction: Direction_listCitationGroups? = nil, model: Model_listCitationGroups? = nil, collectionId: Int? = nil, countryCode: String? = nil, languageCode: String? = nil, prompt: Int? = nil, from: Date? = nil, to: Date? = nil, query: String? = nil, sourceType: SourceType_listCitationGroups? = nil, sentiment: Sentiment_listCitationGroups? = nil, contentGap: ContentGap_listCitationGroups? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Grouped citation intelligence

Grouped citation intelligence by url / domain / host with per-model breakdown, citation rate, and avg citation position. Counts and citation rate include visible citations and background source references. Average position ignores rows with position=0. Owned and competitor source matching honor the project's exact-subdomain setting. Filter vocabulary aligns with `source_type` returned by the API.

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
let collectionId = 987 // Int |  (optional)
let countryCode = "countryCode_example" // String | ISO country code (e.g. US, GB, DE) (optional)
let languageCode = "languageCode_example" // String | ISO language code (e.g. en, es, de) (optional)
let prompt = 987 // Int | Filter by prompt ID (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)
let query = "query_example" // String |  (optional)
let sourceType = "sourceType_example" // String |  (optional)
let sentiment = "sentiment_example" // String |  (optional)
let contentGap = "contentGap_example" // String |  (optional)

// Grouped citation intelligence
CitationIntelligenceAPI.listCitationGroups(projectId: projectId, view: view, page: page, perPage: perPage, order: order, direction: direction, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, prompt: prompt, from: from, to: to, query: query, sourceType: sourceType, sentiment: sentiment, contentGap: contentGap) { (response, error) in
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
 **collectionId** | **Int** |  | [optional] 
 **countryCode** | **String** | ISO country code (e.g. US, GB, DE) | [optional] 
 **languageCode** | **String** | ISO language code (e.g. en, es, de) | [optional] 
 **prompt** | **Int** | Filter by prompt ID | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** |  | [optional] 
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
CitationIntelligenceAPI.listCitedUrlOccurrences(projectId: projectId, urlSha256: urlSha256, page: page, perPage: perPage) { (response, error) in
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

