# CompetitorsAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCompetitor**](CompetitorsAPI.md#createcompetitor) | **POST** /competitors | Add a competitor
[**deleteCompetitor**](CompetitorsAPI.md#deletecompetitor) | **DELETE** /competitors/{id} | Delete a competitor
[**updateCompetitor**](CompetitorsAPI.md#updatecompetitor) | **PATCH** /competitors/{id} | Update a competitor


# **createCompetitor**
```swift
    open class func createCompetitor(createCompetitorRequest: CreateCompetitorRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Add a competitor

Adds a competitor (brand name + domain) to a project. Honours the per-plan max competitors cap. Requires a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let createCompetitorRequest = createCompetitor_request(projectId: 123, brandName: "brandName_example", domain: "domain_example", matchingNames: ["matchingNames_example"]) // CreateCompetitorRequest | 

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

Void (empty response body)

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

Deletes a competitor (irreversible). It disappears immediately and frees a competitor slot; its tracked data is purged by a background job. Requires a `read_write` scope API key.

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

# **updateCompetitor**
```swift
    open class func updateCompetitor(id: Int, updateCompetitorRequest: UpdateCompetitorRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update a competitor

Updates brand_name, matching_names (full replacement list; the brand name is always included automatically) and/or color. The domain is immutable after creation. Name changes re-run mention/citation matching in the background: the competitor shows processing=true for a few minutes and further edits are rejected meanwhile. Requires a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let id = 987 // Int | 
let updateCompetitorRequest = updateCompetitor_request(projectId: 123, brandName: "brandName_example", matchingNames: ["matchingNames_example"], color: "color_example") // UpdateCompetitorRequest | 

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

