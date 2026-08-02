# WebhooksAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWebhook**](WebhooksAPI.md#createwebhook) | **POST** /webhooks | Create a webhook subscription
[**deleteWebhook**](WebhooksAPI.md#deletewebhook) | **DELETE** /webhooks/{id} | Delete a webhook subscription
[**listWebhooks**](WebhooksAPI.md#listwebhooks) | **GET** /webhooks | List webhook subscriptions
[**sampleWebhookPayloads**](WebhooksAPI.md#samplewebhookpayloads) | **GET** /webhooks/sample/{event_type} | Sample event payloads


# **createWebhook**
```swift
    open class func createWebhook(createWebhookRequest: CreateWebhookRequest, completion: @escaping (_ data: CreateWebhook201Response?, _ error: Error?) -> Void)
```

Create a webhook subscription

Subscribes a public HTTPS URL to a project event. LLM Pulse POSTs a JSON envelope (`event`, `occurred_at`, `project_id`, `subscription_id`, `data`) to the URL every time the event occurs, signed via the `X-LLMPulse-Signature` header (HMAC-SHA256 of the raw body computed with the subscription secret). Failed deliveries are retried 5 times with backoff; subscriptions auto-disable after 20 consecutive failed deliveries. Idempotent for the same project + event + URL. Requires a `read_write` scope API key and the Scale plan or above.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let createWebhookRequest = createWebhook_request(projectId: 123, eventType: "eventType_example", targetUrl: "targetUrl_example") // CreateWebhookRequest | 

// Create a webhook subscription
WebhooksAPI.createWebhook(createWebhookRequest: createWebhookRequest) { (response, error) in
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
 **createWebhookRequest** | [**CreateWebhookRequest**](CreateWebhookRequest.md) |  | 

### Return type

[**CreateWebhook201Response**](CreateWebhook201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWebhook**
```swift
    open class func deleteWebhook(id: Int, completion: @escaping (_ data: DeleteWebhook200Response?, _ error: Error?) -> Void)
```

Delete a webhook subscription

Deletes a webhook subscription; the target URL stops receiving events immediately. Requires a `read_write` scope API key and the Scale plan or above.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let id = 987 // Int | 

// Delete a webhook subscription
WebhooksAPI.deleteWebhook(id: id) { (response, error) in
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

### Return type

[**DeleteWebhook200Response**](DeleteWebhook200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWebhooks**
```swift
    open class func listWebhooks(projectId: Int? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: ListWebhooks200Response?, _ error: Error?) -> Void)
```

List webhook subscriptions

Lists active webhook subscriptions for the account, optionally filtered by project. Requires the Scale plan or above.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Optional project filter (optional)
let page = 987 // Int |  (optional)
let perPage = 987 // Int | Max 100 (optional)

// List webhook subscriptions
WebhooksAPI.listWebhooks(projectId: projectId, page: page, perPage: perPage) { (response, error) in
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
 **projectId** | **Int** | Optional project filter | [optional] 
 **page** | **Int** |  | [optional] 
 **perPage** | **Int** | Max 100 | [optional] 

### Return type

[**ListWebhooks200Response**](ListWebhooks200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sampleWebhookPayloads**
```swift
    open class func sampleWebhookPayloads(eventType: EventType_sampleWebhookPayloads, projectId: Int, completion: @escaping (_ data: SampleWebhookPayloads200Response?, _ error: Error?) -> Void)
```

Sample event payloads

Returns up to 3 example event payloads for the event type, built from the project's most recent real data (or a static sample when the project has no data). Used by integration editors such as the Zapier sample loader. Requires the Scale plan or above.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let eventType = "eventType_example" // String | 
let projectId = 987 // Int | 

// Sample event payloads
WebhooksAPI.sampleWebhookPayloads(eventType: eventType, projectId: projectId) { (response, error) in
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
 **eventType** | **String** |  | 
 **projectId** | **Int** |  | 

### Return type

[**SampleWebhookPayloads200Response**](SampleWebhookPayloads200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

