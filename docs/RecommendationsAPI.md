# RecommendationsAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRecommendation**](RecommendationsAPI.md#getrecommendation) | **GET** /recommendations/{id} | Get recommendation run with items
[**launchRecommendations**](RecommendationsAPI.md#launchrecommendations) | **POST** /recommendations | Launch a recommendations generation
[**listRecommendations**](RecommendationsAPI.md#listrecommendations) | **GET** /recommendations | List recommendation runs


# **getRecommendation**
```swift
    open class func getRecommendation(projectId: Int, id: Int, itemStatus: ItemStatus_getRecommendation? = nil, resolveSourceRefs: Bool? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get recommendation run with items

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let id = 987 // Int | 
let itemStatus = "itemStatus_example" // String |  (optional)
let resolveSourceRefs = true // Bool |  (optional) (default to true)

// Get recommendation run with items
RecommendationsAPI.getRecommendation(projectId: projectId, id: id, itemStatus: itemStatus, resolveSourceRefs: resolveSourceRefs) { (response, error) in
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
 **itemStatus** | **String** |  | [optional] 
 **resolveSourceRefs** | **Bool** |  | [optional] [default to true]

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **launchRecommendations**
```swift
    open class func launchRecommendations(launchRecommendationsRequest: LaunchRecommendationsRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Launch a recommendations generation

Launches a full-scope recommendations generation (async job, 1-3 minutes; poll GET /recommendations/{id} until status is completed). Consumes the project weekly recommendation-item budget: returns ERR_LIMIT_REACHED when it is exhausted or when a generation of the same type is already pending/processing. sentiment_reputation requires the Scale plan or above. Requires a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let launchRecommendationsRequest = launchRecommendations_request(projectId: 123, recommendationType: "recommendationType_example") // LaunchRecommendationsRequest | 

// Launch a recommendations generation
RecommendationsAPI.launchRecommendations(launchRecommendationsRequest: launchRecommendationsRequest) { (response, error) in
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
 **launchRecommendationsRequest** | [**LaunchRecommendationsRequest**](LaunchRecommendationsRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRecommendations**
```swift
    open class func listRecommendations(projectId: Int, recommendationType: RecommendationType_listRecommendations? = nil, status: Status_listRecommendations? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List recommendation runs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let recommendationType = "recommendationType_example" // String |  (optional)
let status = "status_example" // String |  (optional)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)

// List recommendation runs
RecommendationsAPI.listRecommendations(projectId: projectId, recommendationType: recommendationType, status: status, page: page, perPage: perPage) { (response, error) in
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
 **recommendationType** | **String** |  | [optional] 
 **status** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

