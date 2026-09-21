# OwnedMediaCommunitiesAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listOwnedMedia**](OwnedMediaCommunitiesAPI.md#listownedmedia) | **GET** /dimensions/owned_media | List owned-media citations
[**listRedditCitations**](OwnedMediaCommunitiesAPI.md#listredditcitations) | **GET** /dimensions/reddit | List cited Reddit content


# **listOwnedMedia**
```swift
    open class func listOwnedMedia(projectId: Int, provider: Provider_listOwnedMedia, page: Int? = nil, perPage: Int? = nil, view: View_listOwnedMedia? = nil, store: Store_listOwnedMedia? = nil, owned: Bool? = nil, model: Model_listOwnedMedia? = nil, collectionId: String? = nil, countryCode: String? = nil, languageCode: String? = nil, brandKind: BrandKind_listOwnedMedia? = nil, range: Int? = nil, from: Date? = nil, to: Date? = nil, output: Output_listOwnedMedia? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List owned-media citations

Which owned-media content AI answers cite, by platform. `provider` is required. Each row carries a `yours` flag so you can compare your own presence against everyone else cited on the same platform. view=own_citations returns the raw citations of the connected profile only and stays empty until a profile is connected. For Reddit use /dimensions/reddit. Requires the Growth plan or above.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let provider = "provider_example" // String | The platform to report on
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let view = "view_example" // String | Row shape; the allowed set depends on provider (optional)
let store = "store_example" // String | provider=mobile_apps only (optional) (default to .googlePlay)
let owned = true // Bool | Return only rows belonging to the account's own connected profile (optional)
let model = "model_example" // String | Filter by AI model. Models the API key's user has not enabled are silently dropped. (optional)
let collectionId = "collectionId_example" // String | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (optional)
let countryCode = "countryCode_example" // String | One ISO country code or a comma-separated list (e.g. US,GB,DE) (optional)
let languageCode = "languageCode_example" // String | One ISO language code or a comma-separated list (e.g. en,es,de) (optional)
let brandKind = "brandKind_example" // String | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (optional)
let range = 987 // Int | Number of days to look back (alternative to from/to) (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (optional)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// List owned-media citations
OwnedMediaCommunitiesAPI.listOwnedMedia(projectId: projectId, provider: provider, page: page, perPage: perPage, view: view, store: store, owned: owned, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, brandKind: brandKind, range: range, from: from, to: to, output: output) { (response, error) in
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
 **provider** | **String** | The platform to report on | 
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]
 **view** | **String** | Row shape; the allowed set depends on provider | [optional] 
 **store** | **String** | provider&#x3D;mobile_apps only | [optional] [default to .googlePlay]
 **owned** | **Bool** | Return only rows belonging to the account&#39;s own connected profile | [optional] 
 **model** | **String** | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collectionId** | **String** | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **countryCode** | **String** | One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **languageCode** | **String** | One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **brandKind** | **String** | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **range** | **Int** | Number of days to look back (alternative to from/to) | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRedditCitations**
```swift
    open class func listRedditCitations(projectId: Int, page: Int? = nil, perPage: Int? = nil, view: View_listRedditCitations? = nil, subreddit: String? = nil, author: String? = nil, status: Status_listRedditCitations? = nil, owned: Bool? = nil, brand: String? = nil, order: Order_listRedditCitations? = nil, direction: Direction_listRedditCitations? = nil, model: Model_listRedditCitations? = nil, collectionId: String? = nil, countryCode: String? = nil, languageCode: String? = nil, brandKind: BrandKind_listRedditCitations? = nil, range: Int? = nil, from: Date? = nil, to: Date? = nil, output: Output_listRedditCitations? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List cited Reddit content

Which Reddit content AI answers cite for your tracked prompts. view=subreddits (default) returns one row per subreddit with its citation count, unique authors and positive/negative sentiment split; view=authors returns one row per author; view=threads returns the individual cited threads with upvotes, comments, average position and dominant sentiment. Requires the Growth plan or above.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let view = "view_example" // String |  (optional) (default to .subreddits)
let subreddit = "subreddit_example" // String | Filter to one subreddit (name without the r/ prefix) (optional)
let author = "author_example" // String | Filter to one Reddit author (optional)
let status = "status_example" // String | view=threads only (optional)
let owned = true // Bool | Return only subreddits/authors the account has claimed as its own (optional)
let brand = "brand_example" // String | Filter to citations whose scraped Reddit content mentions a brand: 'brand' for the tracked brand, or a competitor id. Reads the page content, not the AI answer. (optional)
let order = "order_example" // String | Sort field; the allowed set depends on view (optional)
let direction = "direction_example" // String |  (optional) (default to .desc)
let model = "model_example" // String | Filter by AI model. Models the API key's user has not enabled are silently dropped. (optional)
let collectionId = "collectionId_example" // String | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (optional)
let countryCode = "countryCode_example" // String | One ISO country code or a comma-separated list (e.g. US,GB,DE) (optional)
let languageCode = "languageCode_example" // String | One ISO language code or a comma-separated list (e.g. en,es,de) (optional)
let brandKind = "brandKind_example" // String | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (optional)
let range = 987 // Int | Number of days to look back (alternative to from/to) (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (optional)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// List cited Reddit content
OwnedMediaCommunitiesAPI.listRedditCitations(projectId: projectId, page: page, perPage: perPage, view: view, subreddit: subreddit, author: author, status: status, owned: owned, brand: brand, order: order, direction: direction, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, brandKind: brandKind, range: range, from: from, to: to, output: output) { (response, error) in
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
 **view** | **String** |  | [optional] [default to .subreddits]
 **subreddit** | **String** | Filter to one subreddit (name without the r/ prefix) | [optional] 
 **author** | **String** | Filter to one Reddit author | [optional] 
 **status** | **String** | view&#x3D;threads only | [optional] 
 **owned** | **Bool** | Return only subreddits/authors the account has claimed as its own | [optional] 
 **brand** | **String** | Filter to citations whose scraped Reddit content mentions a brand: &#39;brand&#39; for the tracked brand, or a competitor id. Reads the page content, not the AI answer. | [optional] 
 **order** | **String** | Sort field; the allowed set depends on view | [optional] 
 **direction** | **String** |  | [optional] [default to .desc]
 **model** | **String** | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collectionId** | **String** | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **countryCode** | **String** | One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **languageCode** | **String** | One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **brandKind** | **String** | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **range** | **Int** | Number of days to look back (alternative to from/to) | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

