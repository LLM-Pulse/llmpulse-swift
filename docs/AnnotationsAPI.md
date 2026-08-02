# AnnotationsAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAnnotation**](AnnotationsAPI.md#createannotation) | **POST** /annotations | Create a timeline annotation
[**deleteAnnotation**](AnnotationsAPI.md#deleteannotation) | **DELETE** /annotations/{id} | Delete a timeline annotation
[**listAnnotations**](AnnotationsAPI.md#listannotations) | **GET** /annotations | List timeline annotations
[**updateAnnotation**](AnnotationsAPI.md#updateannotation) | **PATCH** /annotations/{id} | Update a timeline annotation


# **createAnnotation**
```swift
    open class func createAnnotation(createAnnotationRequest: CreateAnnotationRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Create a timeline annotation

Marks a date in the project timeseries with a title + description. Requires the **Growth** plan or above. Requires a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let createAnnotationRequest = createAnnotation_request(projectId: 123, title: "title_example", annotationDate: Date(), description: "description_example", color: "color_example", annotationCategoryId: 123) // CreateAnnotationRequest | 

// Create a timeline annotation
AnnotationsAPI.createAnnotation(createAnnotationRequest: createAnnotationRequest) { (response, error) in
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
 **createAnnotationRequest** | [**CreateAnnotationRequest**](CreateAnnotationRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAnnotation**
```swift
    open class func deleteAnnotation(projectId: Int, id: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a timeline annotation

Deletes an annotation. Same ownership rule as PATCH. Requires the **Growth** plan or above and a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let id = 987 // Int | 

// Delete a timeline annotation
AnnotationsAPI.deleteAnnotation(projectId: projectId, id: id) { (response, error) in
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

# **listAnnotations**
```swift
    open class func listAnnotations(projectId: Int, from: Date? = nil, to: Date? = nil, annotationCategoryId: Int? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List timeline annotations

Lists the project timeline annotations (user-created + system), newest first. The category field tells them apart; editable says whether the requesting user may modify the row. Requires the **Growth** plan or above.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)
let annotationCategoryId = 987 // Int |  (optional)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)

// List timeline annotations
AnnotationsAPI.listAnnotations(projectId: projectId, from: from, to: to, annotationCategoryId: annotationCategoryId, page: page, perPage: perPage) { (response, error) in
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
 **from** | **Date** |  | [optional] 
 **to** | **Date** |  | [optional] 
 **annotationCategoryId** | **Int** |  | [optional] 
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

# **updateAnnotation**
```swift
    open class func updateAnnotation(id: Int, updateAnnotationRequest: UpdateAnnotationRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update a timeline annotation

Updates title, description, annotation_date, color and/or annotation_category_id. Only user-created annotations belonging to the requesting user can be updated (system annotations never). Requires the **Growth** plan or above and a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let id = 987 // Int | 
let updateAnnotationRequest = updateAnnotation_request(projectId: 123, title: "title_example", description: "description_example", annotationDate: Date(), color: "color_example", annotationCategoryId: 123) // UpdateAnnotationRequest | 

// Update a timeline annotation
AnnotationsAPI.updateAnnotation(id: id, updateAnnotationRequest: updateAnnotationRequest) { (response, error) in
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
 **updateAnnotationRequest** | [**UpdateAnnotationRequest**](UpdateAnnotationRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

