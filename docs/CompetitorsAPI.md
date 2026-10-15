# CompetitorsAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCompetitor**](CompetitorsAPI.md#createcompetitor) | **POST** /competitors | Add a competitor
[**deleteCompetitor**](CompetitorsAPI.md#deletecompetitor) | **DELETE** /competitors/{id} | Delete a competitor
[**getCompetitorDetails**](CompetitorsAPI.md#getcompetitordetails) | **GET** /dimensions/competitors/{id} | Competitor details
[**listCompetitorSuggestions**](CompetitorsAPI.md#listcompetitorsuggestions) | **GET** /competitors/suggestions | List competitor suggestions
[**listCompetitors**](CompetitorsAPI.md#listcompetitors) | **GET** /dimensions/competitors | List competitors
[**updateCompetitor**](CompetitorsAPI.md#updatecompetitor) | **PATCH** /competitors/{id} | Update a competitor


# **createCompetitor**
```swift
    open class func createCompetitor(createCompetitorRequest: CreateCompetitorRequest, completion: @escaping (_ data: CompetitorCreateResponse?, _ error: Error?) -> Void)
```

Add a competitor

Adds a competitor with its own citation URL matching rule. Honours the per-plan max competitors cap. Requires a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let createCompetitorRequest = createCompetitor_request(projectId: 123, brandName: "brandName_example", domain: "domain_example", matchingNames: ["matchingNames_example"], citationMatchMode: "citationMatchMode_example", citationMatchPath: "citationMatchPath_example") // CreateCompetitorRequest | 

// Add a competitor
CompetitorsAPI.createCompetitor(createCompetitorRequest: createCompetitorRequest) { (response, error) in
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
 **createCompetitorRequest** | [**CreateCompetitorRequest**](CreateCompetitorRequest.md) |  | 

### Return type

[**CompetitorCreateResponse**](CompetitorCreateResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCompetitor**
```swift
    open class func deleteCompetitor(projectId: Int, id: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a competitor

Deletes a competitor (irreversible). It disappears immediately and frees a competitor slot; a background job then deletes its mentions, citations, sentiment and share of voice history. Its ads, shopping products, local businesses and brand entities are kept and move to the project or another competitor they match, or stay unattributed. Requires a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let id = 987 // Int | 

// Delete a competitor
CompetitorsAPI.deleteCompetitor(projectId: projectId, id: id) { (response, error) in
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
 **id** | **Int** |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCompetitorDetails**
```swift
    open class func getCompetitorDetails(projectId: Int, id: Int, completion: @escaping (_ data: CompetitorDetails?, _ error: Error?) -> Void)
```

Competitor details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let id = 987 // Int | 

// Competitor details
CompetitorsAPI.getCompetitorDetails(projectId: projectId, id: id) { (response, error) in
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
 **id** | **Int** |  | 

### Return type

[**CompetitorDetails**](CompetitorDetails.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCompetitorSuggestions**
```swift
    open class func listCompetitorSuggestions(projectId: Int, basis: Basis_listCompetitorSuggestions? = nil, query: String? = nil, page: Int? = nil, perPage: Int? = nil, output: Output_listCompetitorSuggestions? = nil, completion: @escaping (_ data: CompetitorSuggestionsResponse?, _ error: Error?) -> Void)
```

List competitor suggestions

The two lists of the Suggested tab of the Competitors page. `basis=brands` (default) returns the competing brands the AI discovery proposed that are not tracked or rejected yet, with the names it would match and, when counted, how many answers name it (`mentions`). `basis=citations` returns the domains AI answers cite most that are not your own or tracked yet, with how many answers cite each (`citations`). `discovery` tells whether a discovery run is still loading. Read-only: it never starts a discovery run, which the page starts from its Discover button. Add a suggestion with POST /competitors.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let basis = "basis_example" // String |  (optional) (default to .brands)
let query = "query_example" // String | Only suggestions whose brand name or domain contains this text (optional)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// List competitor suggestions
CompetitorsAPI.listCompetitorSuggestions(projectId: projectId, basis: basis, query: query, page: page, perPage: perPage, output: output) { (response, error) in
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
 **basis** | **String** |  | [optional] [default to .brands]
 **query** | **String** | Only suggestions whose brand name or domain contains this text | [optional] 
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**CompetitorSuggestionsResponse**](CompetitorSuggestionsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCompetitors**
```swift
    open class func listCompetitors(projectId: Int, includeProjectBrand: Bool? = nil, output: Output_listCompetitors? = nil, completion: @escaping (_ data: ListCompetitors200Response?, _ error: Error?) -> Void)
```

List competitors

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let includeProjectBrand = true // Bool | When true, prepends the project brand with actor_type=project and is_own=true (optional) (default to false)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// List competitors
CompetitorsAPI.listCompetitors(projectId: projectId, includeProjectBrand: includeProjectBrand, output: output) { (response, error) in
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
 **includeProjectBrand** | **Bool** | When true, prepends the project brand with actor_type&#x3D;project and is_own&#x3D;true | [optional] [default to false]
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**ListCompetitors200Response**](ListCompetitors200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCompetitor**
```swift
    open class func updateCompetitor(id: Int, updateCompetitorRequest: UpdateCompetitorRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update a competitor

Updates brand_name, the competitor website domain or host, matching_names (full replacement list; the brand name is always included automatically), color and/or the citation URL matching rule. Website domain/host and citation-rule changes share one seven-day cooldown per competitor; other fields remain editable during the cooldown. Name, website or citation-rule changes re-run historical matching in the background: the competitor shows processing=true for a few minutes and further edits are rejected meanwhile. Requires a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let id = 987 // Int | 
let updateCompetitorRequest = updateCompetitor_request(projectId: 123, brandName: "brandName_example", domain: "domain_example", matchingNames: ["matchingNames_example"], color: "color_example", citationMatchMode: "citationMatchMode_example", citationMatchPath: "citationMatchPath_example") // UpdateCompetitorRequest | 

// Update a competitor
CompetitorsAPI.updateCompetitor(id: id, updateCompetitorRequest: updateCompetitorRequest) { (response, error) in
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
 **id** | **Int** |  | 
 **updateCompetitorRequest** | [**UpdateCompetitorRequest**](UpdateCompetitorRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

