# CollectionsAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCollection**](CollectionsAPI.md#createcollection) | **POST** /collections | Create a tag
[**deleteCollection**](CollectionsAPI.md#deletecollection) | **DELETE** /collections/{id} | Delete a tag
[**updateCollection**](CollectionsAPI.md#updatecollection) | **PATCH** /collections/{id} | Update a tag


# **createCollection**
```swift
    open class func createCollection(createCollectionRequest: CreateCollectionRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Create a tag

Creates a tag (Collection) in a project. Optional `prompt_ids` attaches existing prompts in the same call. Tag name must be unique per project (case-insensitive). Requires a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let createCollectionRequest = createCollection_request(projectId: 123, name: "name_example", description: "description_example", promptIds: [123]) // CreateCollectionRequest | 

// Create a tag
CollectionsAPI.createCollection(createCollectionRequest: createCollectionRequest) { (response, error) in
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
 **createCollectionRequest** | [**CreateCollectionRequest**](CreateCollectionRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCollection**
```swift
    open class func deleteCollection(projectId: Int, id: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a tag

Deletes a tag/collection. The prompts inside it are NOT deleted; only the grouping disappears. Requires a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let id = 987 // Int | 

// Delete a tag
CollectionsAPI.deleteCollection(projectId: projectId, id: id) { (response, error) in
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

# **updateCollection**
```swift
    open class func updateCollection(id: Int, updateCollectionRequest: UpdateCollectionRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update a tag

Renames a tag/collection or changes its description. Prompt membership is managed via POST /prompts/assign_tags, not here. Requires a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let id = 987 // Int | 
let updateCollectionRequest = updateCollection_request(projectId: 123, name: "name_example", description: "description_example") // UpdateCollectionRequest | 

// Update a tag
CollectionsAPI.updateCollection(id: id, updateCollectionRequest: updateCollectionRequest) { (response, error) in
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
 **updateCollectionRequest** | [**UpdateCollectionRequest**](UpdateCollectionRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

