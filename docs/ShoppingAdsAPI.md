# ShoppingAdsAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listAds**](ShoppingAdsAPI.md#listads) | **GET** /dimensions/ads | List AI ad placements
[**listShopping**](ShoppingAdsAPI.md#listshopping) | **GET** /dimensions/shopping | List shopping results


# **listAds**
```swift
    open class func listAds(projectId: Int, page: Int? = nil, perPage: Int? = nil, view: View_listAds? = nil, owned: Bool? = nil, order: Order_listAds? = nil, direction: Direction_listAds? = nil, query: String? = nil, model: Model_listAds? = nil, collectionId: String? = nil, countryCode: String? = nil, languageCode: String? = nil, prompt: Int? = nil, promptType: String? = nil, brandKind: BrandKind_listAds? = nil, range: Int? = nil, from: Date? = nil, to: Date? = nil, output: Output_listAds? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List AI ad placements

Paid placements returned inside AI answers. view=advertisers (default) returns one row per advertising domain with its placement count, prompt reach and average and best position; view=ads returns the individual placements with title, snippet, position and the prompt that triggered them. Position 1 is the best slot, so a LOWER average position is better. Requires the Scale plan or above.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let view = "view_example" // String | Row shape: one per advertising domain, or one per placement (optional) (default to .advertisers)
let owned = true // Bool | Return only placements identified as the tracked brand's own (view=ads) (optional)
let order = "order_example" // String | Sort field; the allowed set depends on view (optional)
let direction = "direction_example" // String | Sort direction for view=advertisers. Defaults to desc, except avg_position and domain which default to asc. (optional)
let query = "query_example" // String | Case-insensitive substring filter on the ad title, domain or snippet (optional)
let model = "model_example" // String | Filter by AI model. Models the API key's user has not enabled are silently dropped. (optional)
let collectionId = "collectionId_example" // String | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (optional)
let countryCode = "countryCode_example" // String | One ISO country code or a comma-separated list (e.g. US,GB,DE) (optional)
let languageCode = "languageCode_example" // String | One ISO language code or a comma-separated list (e.g. en,es,de) (optional)
let prompt = 987 // Int | Filter by prompt ID (optional)
let promptType = "promptType_example" // String | One prompt type or a comma-separated list: informational, navigational, commercial, transactional (optional)
let brandKind = "brandKind_example" // String | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (optional)
let range = 987 // Int | Number of days to look back (alternative to from/to) (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (optional)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// List AI ad placements
ShoppingAdsAPI.listAds(projectId: projectId, page: page, perPage: perPage, view: view, owned: owned, order: order, direction: direction, query: query, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, prompt: prompt, promptType: promptType, brandKind: brandKind, range: range, from: from, to: to, output: output) { (response, error) in
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
 **view** | **String** | Row shape: one per advertising domain, or one per placement | [optional] [default to .advertisers]
 **owned** | **Bool** | Return only placements identified as the tracked brand&#39;s own (view&#x3D;ads) | [optional] 
 **order** | **String** | Sort field; the allowed set depends on view | [optional] 
 **direction** | **String** | Sort direction for view&#x3D;advertisers. Defaults to desc, except avg_position and domain which default to asc. | [optional] 
 **query** | **String** | Case-insensitive substring filter on the ad title, domain or snippet | [optional] 
 **model** | **String** | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collectionId** | **String** | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **countryCode** | **String** | One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **languageCode** | **String** | One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **prompt** | **Int** | Filter by prompt ID | [optional] 
 **promptType** | **String** | One prompt type or a comma-separated list: informational, navigational, commercial, transactional | [optional] 
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

# **listShopping**
```swift
    open class func listShopping(projectId: Int, page: Int? = nil, perPage: Int? = nil, view: View_listShopping? = nil, owned: Bool? = nil, order: Order_listShopping? = nil, direction: Direction_listShopping? = nil, query: String? = nil, model: Model_listShopping? = nil, collectionId: String? = nil, countryCode: String? = nil, languageCode: String? = nil, prompt: Int? = nil, promptType: String? = nil, brandKind: BrandKind_listShopping? = nil, range: Int? = nil, from: Date? = nil, to: Date? = nil, output: Output_listShopping? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List shopping results

Product cards returned inside AI answers. view=products (default) returns one row per distinct product, merged across executions, with its appearance count, price range, rating and whether it is yours, plus a currency_count saying how many currencies it was priced in (above 1 means the row reports its highest-priced listing and min_price may be another currency); view=merchants returns one row per selling merchant, with a currency field naming the money its price range and average are expressed in (providers price each market in its own currency, so a merchant that sells in more than one reports the currency most of its prices use). Every response also carries a totals block matching the KPI cards in the app, whose avg_price is computed inside the single currency named by avg_price_currency. Requires the Scale plan or above.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let view = "view_example" // String | Row shape: one per distinct product, or one per merchant (optional) (default to .products)
let owned = true // Bool | Return only products identified as the tracked brand's own. On view=merchants this narrows to the merchants selling those products; the totals block stays account-wide. (optional)
let order = "order_example" // String | Sort field; the allowed set depends on view (optional)
let direction = "direction_example" // String |  (optional) (default to .desc)
let query = "query_example" // String | Case-insensitive substring filter on the product title (optional)
let model = "model_example" // String | Filter by AI model. Models the API key's user has not enabled are silently dropped. (optional)
let collectionId = "collectionId_example" // String | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. (optional)
let countryCode = "countryCode_example" // String | One ISO country code or a comma-separated list (e.g. US,GB,DE) (optional)
let languageCode = "languageCode_example" // String | One ISO language code or a comma-separated list (e.g. en,es,de) (optional)
let prompt = 987 // Int | Filter by prompt ID (optional)
let promptType = "promptType_example" // String | One prompt type or a comma-separated list: informational, navigational, commercial, transactional (optional)
let brandKind = "brandKind_example" // String | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (optional)
let range = 987 // Int | Number of days to look back (alternative to from/to) (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (optional)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// List shopping results
ShoppingAdsAPI.listShopping(projectId: projectId, page: page, perPage: perPage, view: view, owned: owned, order: order, direction: direction, query: query, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, prompt: prompt, promptType: promptType, brandKind: brandKind, range: range, from: from, to: to, output: output) { (response, error) in
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
 **view** | **String** | Row shape: one per distinct product, or one per merchant | [optional] [default to .products]
 **owned** | **Bool** | Return only products identified as the tracked brand&#39;s own. On view&#x3D;merchants this narrows to the merchants selling those products; the totals block stays account-wide. | [optional] 
 **order** | **String** | Sort field; the allowed set depends on view | [optional] 
 **direction** | **String** |  | [optional] [default to .desc]
 **query** | **String** | Case-insensitive substring filter on the product title | [optional] 
 **model** | **String** | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collectionId** | **String** | One collection/tag ID or a comma-separated list of IDs. A query value is always a string on the wire, so it is typed as one: the previous integer-or-string union made generators emit a wrapper type they could not serialize. | [optional] 
 **countryCode** | **String** | One ISO country code or a comma-separated list (e.g. US,GB,DE) | [optional] 
 **languageCode** | **String** | One ISO language code or a comma-separated list (e.g. en,es,de) | [optional] 
 **prompt** | **Int** | Filter by prompt ID | [optional] 
 **promptType** | **String** | One prompt type or a comma-separated list: informational, navigational, commercial, transactional | [optional] 
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

