# RecommendationsAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRecommendation**](RecommendationsAPI.md#getrecommendation) | **GET** /recommendations/{id} | Get recommendation run with items
[**launchRecommendations**](RecommendationsAPI.md#launchrecommendations) | **POST** /recommendations | Launch a recommendations generation
[**listRecommendations**](RecommendationsAPI.md#listrecommendations) | **GET** /recommendations | List recommendation runs
[**updateRecommendationItem**](RecommendationsAPI.md#updaterecommendationitem) | **PATCH** /recommendations/{id}/items/{item_id} | Complete, archive or restore a recommendation item


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
    open class func listRecommendations(projectId: Int, recommendationType: RecommendationType_listRecommendations? = nil, status: Status_listRecommendations? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: RecommendationsResponse?, _ error: Error?) -> Void)
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

[**RecommendationsResponse**](RecommendationsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRecommendationItem**
```swift
    open class func updateRecommendationItem(id: Int, itemId: Int, updateRecommendationItemRequest: UpdateRecommendationItemRequest, completion: @escaping (_ data: RecommendationItemUpdateResponse?, _ error: Error?) -> Void)
```

Complete, archive or restore a recommendation item

Moves one item of a recommendation run between `active`, `completed` and `archived`, exactly like the complete, archive and restore buttons on the Recommendations page, and stamps `status_changed_at`. Returns the item in the shape `GET /recommendations/{id}` lists items. Requires a `read_write` scope API key and, for team members, create permission on Recommendations (the permission the page uses for these buttons).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let id = 987 // Int | Recommendation run id
let itemId = 987 // Int | Item id, from the items of GET /recommendations/{id}
let updateRecommendationItemRequest = updateRecommendationItem_request(projectId: 123, status: "status_example") // UpdateRecommendationItemRequest | 

// Complete, archive or restore a recommendation item
RecommendationsAPI.updateRecommendationItem(id: id, itemId: itemId, updateRecommendationItemRequest: updateRecommendationItemRequest) { (response, error) in
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
 **id** | **Int** | Recommendation run id | 
 **itemId** | **Int** | Item id, from the items of GET /recommendations/{id} | 
 **updateRecommendationItemRequest** | [**UpdateRecommendationItemRequest**](UpdateRecommendationItemRequest.md) |  | 

### Return type

[**RecommendationItemUpdateResponse**](RecommendationItemUpdateResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

