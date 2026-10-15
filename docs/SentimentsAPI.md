# SentimentsAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSentimentTags**](SentimentsAPI.md#getsentimenttags) | **GET** /reports/sentiment/tags | Sentiment by tag (Growth plan or above)
[**getSentimentTopics**](SentimentsAPI.md#getsentimenttopics) | **GET** /reports/sentiment/topics | Sentiment by topic (Growth plan or above)
[**listSentimentCategories**](SentimentsAPI.md#listsentimentcategories) | **GET** /dimensions/sentiments | List sentiment categories (Growth plan or above)
[**listSentimentRecords**](SentimentsAPI.md#listsentimentrecords) | **GET** /sentiments | List sentiment records (Growth plan or above)


# **getSentimentTags**
```swift
    open class func getSentimentTags(projectId: Int, range: Int? = nil, from: Date? = nil, to: Date? = nil, model: Model_getSentimentTags? = nil, collectionId: String? = nil, countryCode: String? = nil, languageCode: String? = nil, brandKind: BrandKind_getSentimentTags? = nil, analysis: String? = nil, topic: String? = nil, query: String? = nil, brand: String? = nil, sort: Sort_getSentimentTags? = nil, sortDir: SortDir_getSentimentTags? = nil, page: Int? = nil, perPage: Int? = nil, output: Output_getSentimentTags? = nil, completion: @escaping (_ data: SentimentTagsResponse?, _ error: Error?) -> Void)
```

Sentiment by tag (Growth plan or above)

One row per tag of the project with at least one analyzed mention, with the positive (very positive included), neutral and negative counts, their shares on a 0-100 scale and the net sentiment score. A mention counts once for every tag its prompt carries, as on the Sentiment page. Same filters as GET /reports/sentiment/topics. Requires the Growth plan; lower tiers receive ERR_PLAN_REQUIRED.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let range = 987 // Int | Number of days to look back, today included (default 28, like the Sentiment page). Ignored when from or to is given. (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (optional)
let model = "model_example" // String | Filter by one AI model. It must be a model enabled for the API key's user: an unknown value, or a model the user has not enabled, returns 422 ERR_INVALID_PARAM with the valid values in the message. (optional)
let collectionId = "collectionId_example" // String | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (optional)
let countryCode = "countryCode_example" // String | One ISO country code or a comma-separated list (e.g. US,GB,DE) (optional)
let languageCode = "languageCode_example" // String | One ISO language code or a comma-separated list (e.g. en,es,de) (optional)
let brandKind = "brandKind_example" // String | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (optional)
let analysis = "analysis_example" // String | One sentiment level or a comma-separated list: very_positive, positive, neutral, negative, very_negative (optional)
let topic = "topic_example" // String | Only sentiments tagged with this topic (case-insensitive) (optional)
let query = "query_example" // String | Only sentiments whose answer or prompt text contains this text (optional)
let brand = "brand_example" // String | Whose sentiment to count. Empty or omitted for your own brand, all for every brand, or a competitor id (an unknown id returns ERR_INVALID_PARAM). (optional)
let sort = "sort_example" // String | Sort column: mentions, name (the topic or tag), positive, negative or neutral (their shares) or net_score. Ties sort by name. (optional) (default to .mentions)
let sortDir = "sortDir_example" // String |  (optional) (default to .desc)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// Sentiment by tag (Growth plan or above)
SentimentsAPI.getSentimentTags(projectId: projectId, range: range, from: from, to: to, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, brandKind: brandKind, analysis: analysis, topic: topic, query: query, brand: brand, sort: sort, sortDir: sortDir, page: page, perPage: perPage, output: output) { (response, error) in
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
 **range** | **Int** | Number of days to look back, today included (default 28, like the Sentiment page). Ignored when from or to is given. | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **model** | **String** | Filter by one AI model. It must be a model enabled for the API key&#39;s user: an unknown value, or a model the user has not enabled, returns 422 ERR_INVALID_PARAM with the valid values in the message. | [optional] 
 **collectionId** | **String** | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **countryCode** | **String** | One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **languageCode** | **String** | One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **brandKind** | **String** | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **analysis** | **String** | One sentiment level or a comma-separated list: very_positive, positive, neutral, negative, very_negative | [optional] 
 **topic** | **String** | Only sentiments tagged with this topic (case-insensitive) | [optional] 
 **query** | **String** | Only sentiments whose answer or prompt text contains this text | [optional] 
 **brand** | **String** | Whose sentiment to count. Empty or omitted for your own brand, all for every brand, or a competitor id (an unknown id returns ERR_INVALID_PARAM). | [optional] 
 **sort** | **String** | Sort column: mentions, name (the topic or tag), positive, negative or neutral (their shares) or net_score. Ties sort by name. | [optional] [default to .mentions]
 **sortDir** | **String** |  | [optional] [default to .desc]
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**SentimentTagsResponse**](SentimentTagsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSentimentTopics**
```swift
    open class func getSentimentTopics(projectId: Int, range: Int? = nil, from: Date? = nil, to: Date? = nil, model: Model_getSentimentTopics? = nil, collectionId: String? = nil, countryCode: String? = nil, languageCode: String? = nil, brandKind: BrandKind_getSentimentTopics? = nil, analysis: String? = nil, topic: String? = nil, query: String? = nil, brand: String? = nil, sort: Sort_getSentimentTopics? = nil, sortDir: SortDir_getSentimentTopics? = nil, page: Int? = nil, perPage: Int? = nil, output: Output_getSentimentTopics? = nil, completion: @escaping (_ data: SentimentTopicsResponse?, _ error: Error?) -> Void)
```

Sentiment by topic (Growth plan or above)

One row per topic AI answers associate with the brand (topics are matched case-insensitively), with its analyzed mentions, the positive (very positive included), neutral and negative counts, their shares on a 0-100 scale and the net sentiment score ((positive - negative) / mentions x 100). The same rows and filters as the Topics tab of the Sentiment page: the window defaults to the last 28 days, `brand` empty counts your own brand, `all` every brand and a competitor id that competitor. Requires the Growth plan; lower tiers receive ERR_PLAN_REQUIRED.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let range = 987 // Int | Number of days to look back, today included (default 28, like the Sentiment page). Ignored when from or to is given. (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (optional)
let model = "model_example" // String | Filter by one AI model. It must be a model enabled for the API key's user: an unknown value, or a model the user has not enabled, returns 422 ERR_INVALID_PARAM with the valid values in the message. (optional)
let collectionId = "collectionId_example" // String | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (optional)
let countryCode = "countryCode_example" // String | One ISO country code or a comma-separated list (e.g. US,GB,DE) (optional)
let languageCode = "languageCode_example" // String | One ISO language code or a comma-separated list (e.g. en,es,de) (optional)
let brandKind = "brandKind_example" // String | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (optional)
let analysis = "analysis_example" // String | One sentiment level or a comma-separated list: very_positive, positive, neutral, negative, very_negative (optional)
let topic = "topic_example" // String | Only sentiments tagged with this topic (case-insensitive) (optional)
let query = "query_example" // String | Only sentiments whose answer or prompt text contains this text (optional)
let brand = "brand_example" // String | Whose sentiment to count. Empty or omitted for your own brand, all for every brand, or a competitor id (an unknown id returns ERR_INVALID_PARAM). (optional)
let sort = "sort_example" // String | Sort column: mentions, name (the topic or tag), positive, negative or neutral (their shares) or net_score. Ties sort by name. (optional) (default to .mentions)
let sortDir = "sortDir_example" // String |  (optional) (default to .desc)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// Sentiment by topic (Growth plan or above)
SentimentsAPI.getSentimentTopics(projectId: projectId, range: range, from: from, to: to, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, brandKind: brandKind, analysis: analysis, topic: topic, query: query, brand: brand, sort: sort, sortDir: sortDir, page: page, perPage: perPage, output: output) { (response, error) in
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
 **range** | **Int** | Number of days to look back, today included (default 28, like the Sentiment page). Ignored when from or to is given. | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **model** | **String** | Filter by one AI model. It must be a model enabled for the API key&#39;s user: an unknown value, or a model the user has not enabled, returns 422 ERR_INVALID_PARAM with the valid values in the message. | [optional] 
 **collectionId** | **String** | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **countryCode** | **String** | One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **languageCode** | **String** | One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **brandKind** | **String** | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **analysis** | **String** | One sentiment level or a comma-separated list: very_positive, positive, neutral, negative, very_negative | [optional] 
 **topic** | **String** | Only sentiments tagged with this topic (case-insensitive) | [optional] 
 **query** | **String** | Only sentiments whose answer or prompt text contains this text | [optional] 
 **brand** | **String** | Whose sentiment to count. Empty or omitted for your own brand, all for every brand, or a competitor id (an unknown id returns ERR_INVALID_PARAM). | [optional] 
 **sort** | **String** | Sort column: mentions, name (the topic or tag), positive, negative or neutral (their shares) or net_score. Ties sort by name. | [optional] [default to .mentions]
 **sortDir** | **String** |  | [optional] [default to .desc]
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**SentimentTopicsResponse**](SentimentTopicsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSentimentCategories**
```swift
    open class func listSentimentCategories(projectId: Int, output: Output_listSentimentCategories? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List sentiment categories (Growth plan or above)

Sentiment metric keys + labels + colors. For records, use /sentiments. Requires the Growth plan; lower tiers receive ERR_PLAN_REQUIRED.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// List sentiment categories (Growth plan or above)
SentimentsAPI.listSentimentCategories(projectId: projectId, output: output) { (response, error) in
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
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSentimentRecords**
```swift
    open class func listSentimentRecords(projectId: Int, competitorId: Int? = nil, brandOnly: Bool? = nil, analysis: String? = nil, model: Model_listSentimentRecords? = nil, collectionId: String? = nil, countryCode: String? = nil, languageCode: String? = nil, from: Date? = nil, to: Date? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: SentimentsResponse?, _ error: Error?) -> Void)
```

List sentiment records (Growth plan or above)

Requires the Growth plan; lower tiers receive ERR_PLAN_REQUIRED.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let competitorId = 987 // Int |  (optional)
let brandOnly = true // Bool |  (optional)
let analysis = "analysis_example" // String | One sentiment level or a comma-separated list: very_positive, positive, neutral, negative, very_negative (optional)
let model = "model_example" // String | Filter by one AI model. Here an unknown value, or a model the API key's user has not enabled, is ignored rather than rejected: the request succeeds and returns the records of every enabled model, as if model were omitted. (optional)
let collectionId = "collectionId_example" // String | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (optional)
let countryCode = "countryCode_example" // String | One ISO country code or a comma-separated list (e.g. US,GB,DE) (optional)
let languageCode = "languageCode_example" // String | One ISO language code or a comma-separated list (e.g. en,es,de) (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (optional)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)

// List sentiment records (Growth plan or above)
SentimentsAPI.listSentimentRecords(projectId: projectId, competitorId: competitorId, brandOnly: brandOnly, analysis: analysis, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, from: from, to: to, page: page, perPage: perPage) { (response, error) in
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
 **competitorId** | **Int** |  | [optional] 
 **brandOnly** | **Bool** |  | [optional] 
 **analysis** | **String** | One sentiment level or a comma-separated list: very_positive, positive, neutral, negative, very_negative | [optional] 
 **model** | **String** | Filter by one AI model. Here an unknown value, or a model the API key&#39;s user has not enabled, is ignored rather than rejected: the request succeeds and returns the records of every enabled model, as if model were omitted. | [optional] 
 **collectionId** | **String** | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **countryCode** | **String** | One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **languageCode** | **String** | One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]

### Return type

[**SentimentsResponse**](SentimentsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

