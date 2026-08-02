# PromptsAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assignPromptTags**](PromptsAPI.md#assignprompttags) | **POST** /prompts/assign_tags | Bulk-attach tags to prompts
[**createPrompts**](PromptsAPI.md#createprompts) | **POST** /prompts | Bulk-create prompts
[**deletePrompt**](PromptsAPI.md#deleteprompt) | **DELETE** /prompts/{id} | Delete a prompt


# **assignPromptTags**
```swift
    open class func assignPromptTags(assignPromptTagsRequest: AssignPromptTagsRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Bulk-attach tags to prompts

Idempotent bulk assignment of tags (Collections) to existing prompts. Tags can be resolved by id or by name (case-insensitive). Use `create_missing: true` to auto-create unknown tag names. Requires a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let assignPromptTagsRequest = assignPromptTags_request(projectId: 123, promptIds: [123], tagIds: [123], tagNames: ["tagNames_example"], createMissing: false) // AssignPromptTagsRequest | 

// Bulk-attach tags to prompts
PromptsAPI.assignPromptTags(assignPromptTagsRequest: assignPromptTagsRequest) { (response, error) in
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
 **assignPromptTagsRequest** | [**AssignPromptTagsRequest**](AssignPromptTagsRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPrompts**
```swift
    open class func createPrompts(promptsCreateRequest: PromptsCreateRequest, completion: @escaping (_ data: PromptsCreateResponse?, _ error: Error?) -> Void)
```

Bulk-create prompts

Add prompts to a project in bulk (up to 100 per request). Validates the account prompt quota and skips duplicates. Requires a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let promptsCreateRequest = PromptsCreateRequest(projectId: 123, prompts: ["prompts_example"], countryCode: "countryCode_example", languageCode: "languageCode_example") // PromptsCreateRequest | 

// Bulk-create prompts
PromptsAPI.createPrompts(promptsCreateRequest: promptsCreateRequest) { (response, error) in
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
 **promptsCreateRequest** | [**PromptsCreateRequest**](PromptsCreateRequest.md) |  | 

### Return type

[**PromptsCreateResponse**](PromptsCreateResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePrompt**
```swift
    open class func deletePrompt(projectId: Int, id: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a prompt

Deletes a prompt (irreversible). The prompt disappears immediately and frees a prompt slot; its historical data (executions, mentions, citations, sentiment) is purged by a background job. Requires a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let id = 987 // Int | 

// Delete a prompt
PromptsAPI.deletePrompt(projectId: projectId, id: id) { (response, error) in
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

