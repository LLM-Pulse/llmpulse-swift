# GEOWriterAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createIntelligenceTask**](GEOWriterAPI.md#createintelligencetask) | **POST** /intelligence_tasks | Create a GEO Writer task
[**getIntelligenceTask**](GEOWriterAPI.md#getintelligencetask) | **GET** /intelligence_tasks/{id} | Get a GEO Writer task
[**listIntelligenceTasks**](GEOWriterAPI.md#listintelligencetasks) | **GET** /intelligence_tasks | List GEO Writer tasks
[**revertIntelligenceTaskContent**](GEOWriterAPI.md#revertintelligencetaskcontent) | **POST** /intelligence_tasks/{id}/revert | Revert GEO Writer task content
[**updateIntelligenceTaskContent**](GEOWriterAPI.md#updateintelligencetaskcontent) | **PATCH** /intelligence_tasks/{id} | Edit GEO Writer task content


# **createIntelligenceTask**
```swift
    open class func createIntelligenceTask(intelligenceTaskCreateRequest: IntelligenceTaskCreateRequest, completion: @escaping (_ data: IntelligenceTask?, _ error: Error?) -> Void)
```

Create a GEO Writer task

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let intelligenceTaskCreateRequest = IntelligenceTaskCreateRequest(projectId: 123, taskType: "taskType_example", promptId: 123, customTopic: "customTopic_example", userInstructions: "userInstructions_example", outputLanguageCode: "outputLanguageCode_example", existingContent: "existingContent_example", existingContentUrl: "existingContentUrl_example") // IntelligenceTaskCreateRequest | 

// Create a GEO Writer task
GEOWriterAPI.createIntelligenceTask(intelligenceTaskCreateRequest: intelligenceTaskCreateRequest) { (response, error) in
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
 **intelligenceTaskCreateRequest** | [**IntelligenceTaskCreateRequest**](IntelligenceTaskCreateRequest.md) |  | 

### Return type

[**IntelligenceTask**](IntelligenceTask.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIntelligenceTask**
```swift
    open class func getIntelligenceTask(projectId: Int, id: String, completion: @escaping (_ data: IntelligenceTask?, _ error: Error?) -> Void)
```

Get a GEO Writer task

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let id = "id_example" // String | Numeric task ID or public_id string token

// Get a GEO Writer task
GEOWriterAPI.getIntelligenceTask(projectId: projectId, id: id) { (response, error) in
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
 **id** | **String** | Numeric task ID or public_id string token | 

### Return type

[**IntelligenceTask**](IntelligenceTask.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIntelligenceTasks**
```swift
    open class func listIntelligenceTasks(projectId: Int, taskType: TaskType_listIntelligenceTasks? = nil, status: String? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List GEO Writer tasks

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let taskType = "taskType_example" // String |  (optional)
let status = "status_example" // String |  (optional)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)

// List GEO Writer tasks
GEOWriterAPI.listIntelligenceTasks(projectId: projectId, taskType: taskType, status: status, page: page, perPage: perPage) { (response, error) in
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
 **taskType** | **String** |  | [optional] 
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

# **revertIntelligenceTaskContent**
```swift
    open class func revertIntelligenceTaskContent(projectId: Int, id: String, completion: @escaping (_ data: IntelligenceTask?, _ error: Error?) -> Void)
```

Revert GEO Writer task content

Discards every manual edit on the task and restores the output exactly as it was generated. Returns ERR_INVALID_PARAM when the task has no manual edits. Requires a `read_write` scope API key and, for team members, update permission on GEO Writer.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let id = "id_example" // String | Numeric task ID or public_id string token

// Revert GEO Writer task content
GEOWriterAPI.revertIntelligenceTaskContent(projectId: projectId, id: id) { (response, error) in
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
 **id** | **String** | Numeric task ID or public_id string token | 

### Return type

[**IntelligenceTask**](IntelligenceTask.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateIntelligenceTaskContent**
```swift
    open class func updateIntelligenceTaskContent(id: String, intelligenceTaskUpdateRequest: IntelligenceTaskUpdateRequest, completion: @escaping (_ data: IntelligenceTaskUpdateResponse?, _ error: Error?) -> Void)
```

Edit GEO Writer task content

Edits the text of a completed task in place. `edits` maps dotted paths into result_data (for example `title` or `sections.0.content`) to replacement text. Only string fields that already exist can change: a path that does not resolve to text, a blank `title`, a value over 20,000 characters or an empty `edits` object is rejected with ERR_INVALID_PARAM and nothing is written. Values identical to the stored text are ignored, and the response lists the paths that actually changed. The first edit keeps a copy of the generated output so POST /intelligence_tasks/{id}/revert can restore it; regenerating the task replaces the edited content. Requires a `read_write` scope API key and, for team members, update permission on GEO Writer.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let id = "id_example" // String | Numeric task ID or public_id string token
let intelligenceTaskUpdateRequest = IntelligenceTaskUpdateRequest(projectId: 123, edits: "TODO") // IntelligenceTaskUpdateRequest | 

// Edit GEO Writer task content
GEOWriterAPI.updateIntelligenceTaskContent(id: id, intelligenceTaskUpdateRequest: intelligenceTaskUpdateRequest) { (response, error) in
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
 **id** | **String** | Numeric task ID or public_id string token | 
 **intelligenceTaskUpdateRequest** | [**IntelligenceTaskUpdateRequest**](IntelligenceTaskUpdateRequest.md) |  | 

### Return type

[**IntelligenceTaskUpdateResponse**](IntelligenceTaskUpdateResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

