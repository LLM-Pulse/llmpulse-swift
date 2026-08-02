# HealthAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ping**](HealthAPI.md#ping) | **GET** /ping | Health check


# **ping**
```swift
    open class func ping(projectId: Int? = nil, completion: @escaping (_ data: Ping200Response?, _ error: Error?) -> Void)
```

Health check

Validates the API key and optionally pings a project. Returns the authenticated user_id, project (if project_id is supplied), and a request_id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Optional project to verify access for (optional)

// Health check
HealthAPI.ping(projectId: projectId) { (response, error) in
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
 **projectId** | **Int** | Optional project to verify access for | [optional] 

### Return type

[**Ping200Response**](Ping200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

