# StoreIntegrationsAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acceptCatalogPromptSuggestions**](StoreIntegrationsAPI.md#acceptcatalogpromptsuggestions) | **POST** /catalog_prompt_suggestions/accept | Accept catalog prompt suggestions
[**createCatalogPromptSuggestions**](StoreIntegrationsAPI.md#createcatalogpromptsuggestions) | **POST** /catalog_prompt_suggestions | Suggest buyer prompts from catalog products
[**getStoreConnection**](StoreIntegrationsAPI.md#getstoreconnection) | **GET** /store_connection | Match a store to a project
[**listAiOrders**](StoreIntegrationsAPI.md#listaiorders) | **GET** /ai_orders | Read AI-referred store orders
[**listCatalogPromptSuggestions**](StoreIntegrationsAPI.md#listcatalogpromptsuggestions) | **GET** /catalog_prompt_suggestions | List catalog prompt suggestions
[**rejectCatalogPromptSuggestions**](StoreIntegrationsAPI.md#rejectcatalogpromptsuggestions) | **POST** /catalog_prompt_suggestions/reject | Reject catalog prompt suggestions
[**replaceAiOrders**](StoreIntegrationsAPI.md#replaceaiorders) | **PUT** /ai_orders | Replace AI-referred store orders for a window


# **acceptCatalogPromptSuggestions**
```swift
    open class func acceptCatalogPromptSuggestions(catalogPromptSuggestionIdsRequest: CatalogPromptSuggestionIdsRequest, completion: @escaping (_ data: CatalogPromptSuggestionsAcceptResponse?, _ error: Error?) -> Void)
```

Accept catalog prompt suggestions

Starts tracking pending suggestions: each one becomes a prompt, tagged with a collection named after its product. Suggestions that are no longer pending come back in skipped. All accepted suggestions must share one country and language. When the new prompts would exceed the plan, the call returns ERR_LIMIT_REACHED and accepts nothing. Requires a `read_write` scope API key and, for team members, create access to Prompts. Not available to accounts with a white-label portal or an embed (ERR_INTEGRATION_UNAVAILABLE).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let catalogPromptSuggestionIdsRequest = CatalogPromptSuggestionIdsRequest(projectId: 123, ids: [123]) // CatalogPromptSuggestionIdsRequest | 

// Accept catalog prompt suggestions
StoreIntegrationsAPI.acceptCatalogPromptSuggestions(catalogPromptSuggestionIdsRequest: catalogPromptSuggestionIdsRequest) { (response, error) in
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
 **catalogPromptSuggestionIdsRequest** | [**CatalogPromptSuggestionIdsRequest**](CatalogPromptSuggestionIdsRequest.md) |  | 

### Return type

[**CatalogPromptSuggestionsAcceptResponse**](CatalogPromptSuggestionsAcceptResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCatalogPromptSuggestions**
```swift
    open class func createCatalogPromptSuggestions(catalogPromptSuggestionsCreateRequest: CatalogPromptSuggestionsCreateRequest, completion: @escaping (_ data: CatalogPromptSuggestionsCreateResponse?, _ error: Error?) -> Void)
```

Suggest buyer prompts from catalog products

Writes buyer prompts for up to 20 catalog products and saves them as pending suggestions in the project's Suggested prompts queue, with the product recorded on each. Generation draws on the hourly prompt-suggestion allowance the app also uses (ERR_QUOTA_EXCEEDED once it is used up); a failed generation returns ERR_GENERATION_FAILED (502) and can be retried. Requires a `read_write` scope API key and, for team members, create access to Prompts. Not available to accounts with a white-label portal or an embed (ERR_INTEGRATION_UNAVAILABLE).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let catalogPromptSuggestionsCreateRequest = CatalogPromptSuggestionsCreateRequest(projectId: 123, platform: "platform_example", countryCode: "countryCode_example", languageCode: "languageCode_example", products: [CatalogProduct(externalId: "externalId_example", title: "title_example", handle: "handle_example", productType: "productType_example", vendor: "vendor_example", tags: ["tags_example"], collections: ["collections_example"], url: "url_example")]) // CatalogPromptSuggestionsCreateRequest | 

// Suggest buyer prompts from catalog products
StoreIntegrationsAPI.createCatalogPromptSuggestions(catalogPromptSuggestionsCreateRequest: catalogPromptSuggestionsCreateRequest) { (response, error) in
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
 **catalogPromptSuggestionsCreateRequest** | [**CatalogPromptSuggestionsCreateRequest**](CatalogPromptSuggestionsCreateRequest.md) |  | 

### Return type

[**CatalogPromptSuggestionsCreateResponse**](CatalogPromptSuggestionsCreateResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStoreConnection**
```swift
    open class func getStoreConnection(platform: Platform_getStoreConnection, domain: String, completion: @escaping (_ data: StoreConnectionResponse?, _ error: Error?) -> Void)
```

Match a store to a project

Tells a store app whether the API key's account can use it and which project the store belongs to: the live project whose domain equals the store domain, else one whose domain is a parent or a subdomain of it, else null. candidates lists every live project of the account so the app can offer a picker. Takes no project_id. Not available to accounts with a white-label portal or an embed (ERR_INTEGRATION_UNAVAILABLE).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let platform = "platform_example" // String | Store platform
let domain = "domain_example" // String | Store domain, with or without scheme, e.g. acme-store.com

// Match a store to a project
StoreIntegrationsAPI.getStoreConnection(platform: platform, domain: domain) { (response, error) in
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
 **platform** | **String** | Store platform | 
 **domain** | **String** | Store domain, with or without scheme, e.g. acme-store.com | 

### Return type

[**StoreConnectionResponse**](StoreConnectionResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAiOrders**
```swift
    open class func listAiOrders(projectId: Int, platform: Platform_listAiOrders? = nil, from: Date? = nil, to: Date? = nil, completion: @escaping (_ data: AiOrdersResponse?, _ error: Error?) -> Void)
```

Read AI-referred store orders

Reads back the AI-referred orders a store app pushed for a project: totals, one row per AI assistant and a daily series of the days with orders. Revenue values are decimal strings in currency. Team members need read access to AI Traffic. Not available to accounts with a white-label portal or an embed (ERR_INTEGRATION_UNAVAILABLE).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let platform = "platform_example" // String | Store platform (optional) (default to .shopify)
let from = Date() // Date | First day (YYYY-MM-DD). Defaults to 89 days before to (optional)
let to = Date() // Date | Last day (YYYY-MM-DD). Defaults to today; the window is at most 400 days (optional)

// Read AI-referred store orders
StoreIntegrationsAPI.listAiOrders(projectId: projectId, platform: platform, from: from, to: to) { (response, error) in
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
 **platform** | **String** | Store platform | [optional] [default to .shopify]
 **from** | **Date** | First day (YYYY-MM-DD). Defaults to 89 days before to | [optional] 
 **to** | **Date** | Last day (YYYY-MM-DD). Defaults to today; the window is at most 400 days | [optional] 

### Return type

[**AiOrdersResponse**](AiOrdersResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCatalogPromptSuggestions**
```swift
    open class func listCatalogPromptSuggestions(projectId: Int, status: Status_listCatalogPromptSuggestions? = nil, productExternalId: String? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: CatalogPromptSuggestionsResponse?, _ error: Error?) -> Void)
```

List catalog prompt suggestions

Lists the buyer prompts suggested from a store catalog, oldest first, with their status and the product each one came from. Team members need read access to Prompts. Not available to accounts with a white-label portal or an embed (ERR_INTEGRATION_UNAVAILABLE).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let status = "status_example" // String | Only suggestions in this status (optional)
let productExternalId = "productExternalId_example" // String | Only suggestions for this store product id (optional)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 50)

// List catalog prompt suggestions
StoreIntegrationsAPI.listCatalogPromptSuggestions(projectId: projectId, status: status, productExternalId: productExternalId, page: page, perPage: perPage) { (response, error) in
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
 **status** | **String** | Only suggestions in this status | [optional] 
 **productExternalId** | **String** | Only suggestions for this store product id | [optional] 
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 50]

### Return type

[**CatalogPromptSuggestionsResponse**](CatalogPromptSuggestionsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rejectCatalogPromptSuggestions**
```swift
    open class func rejectCatalogPromptSuggestions(catalogPromptSuggestionIdsRequest: CatalogPromptSuggestionIdsRequest, completion: @escaping (_ data: CatalogPromptSuggestionsRejectResponse?, _ error: Error?) -> Void)
```

Reject catalog prompt suggestions

Marks pending suggestions as rejected; suggestions that are no longer pending stay as they are. Requires a `read_write` scope API key and, for team members, update access to Prompts. Not available to accounts with a white-label portal or an embed (ERR_INTEGRATION_UNAVAILABLE).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let catalogPromptSuggestionIdsRequest = CatalogPromptSuggestionIdsRequest(projectId: 123, ids: [123]) // CatalogPromptSuggestionIdsRequest | 

// Reject catalog prompt suggestions
StoreIntegrationsAPI.rejectCatalogPromptSuggestions(catalogPromptSuggestionIdsRequest: catalogPromptSuggestionIdsRequest) { (response, error) in
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
 **catalogPromptSuggestionIdsRequest** | [**CatalogPromptSuggestionIdsRequest**](CatalogPromptSuggestionIdsRequest.md) |  | 

### Return type

[**CatalogPromptSuggestionsRejectResponse**](CatalogPromptSuggestionsRejectResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replaceAiOrders**
```swift
    open class func replaceAiOrders(aiOrdersUpdateRequest: AiOrdersUpdateRequest, completion: @escaping (_ data: AiOrdersUpdateResponse?, _ error: Error?) -> Void)
```

Replace AI-referred store orders for a window

Replaces the daily AI-referred orders and revenue of the from..to window. Send the raw referring host or utm_source of each order's first visit as referrer: LLM Pulse classifies it and ignores anything that is not an AI assistant. Entries for the same day and assistant are summed. Every stored row of that project and platform inside the window is replaced, so pushing the same window again converges instead of counting twice. Rows are kept per project and platform, not per store, so one store reports per project. Requires a `read_write` scope API key and, for team members, update access to AI Traffic. Not available to accounts with a white-label portal or an embed (ERR_INTEGRATION_UNAVAILABLE).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let aiOrdersUpdateRequest = AiOrdersUpdateRequest(projectId: 123, platform: "platform_example", currency: "currency_example", from: Date(), to: Date(), days: [AiOrdersUpdateRequest_days_inner(day: Date(), referrer: "referrer_example", orders: 123, revenue: "revenue_example")]) // AiOrdersUpdateRequest | 

// Replace AI-referred store orders for a window
StoreIntegrationsAPI.replaceAiOrders(aiOrdersUpdateRequest: aiOrdersUpdateRequest) { (response, error) in
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
 **aiOrdersUpdateRequest** | [**AiOrdersUpdateRequest**](AiOrdersUpdateRequest.md) |  | 

### Return type

[**AiOrdersUpdateResponse**](AiOrdersUpdateResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

