# APIKeysAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createApiKey**](APIKeysAPI.md#createapikey) | **POST** /api_keys | Create an API key limited to projects
[**listApiKeys**](APIKeysAPI.md#listapikeys) | **GET** /api_keys | List API keys
[**revokeApiKey**](APIKeysAPI.md#revokeapikey) | **DELETE** /api_keys/{id} | Revoke an API key


# **createApiKey**
```swift
    open class func createApiKey(createApiKeyRequest: CreateApiKeyRequest, completion: @escaping (_ data: CreateApiKey201Response?, _ error: Error?) -> Void)
```

Create an API key limited to projects

Creates an API key limited to the projects in project_ids, owned by the same user as the calling key, and returns its secret token once: store it, since it cannot be read again. The key sees only those projects (any other project answers ERR_PROJECT_NOT_FOUND) and cannot act on the whole account, and the set of projects never changes. This endpoint never creates an account-wide key; create one in the app under API Keys. scope is read (default) or read_write. Every project must be one the caller can access: a project of another account, a deleted one or an unknown id answers ERR_PROJECT_NOT_FOUND and nothing is created. A user can hold up to 500 active keys; past that the request answers ERR_LIMIT_REACHED until a key is revoked. Requires an account-wide `read_write` scope API key on the Scale plan or above: a key limited to some projects answers ERR_KEY_PROJECT_SCOPED. A team member needs permission to create API keys and can only choose projects they can access.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let createApiKeyRequest = createApiKey_request(name: "name_example", scope: "scope_example", projectIds: [123]) // CreateApiKeyRequest | 

// Create an API key limited to projects
APIKeysAPI.createApiKey(createApiKeyRequest: createApiKeyRequest) { (response, error) in
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
 **createApiKeyRequest** | [**CreateApiKeyRequest**](CreateApiKeyRequest.md) |  | 

### Return type

[**CreateApiKey201Response**](CreateApiKey201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listApiKeys**
```swift
    open class func listApiKeys(page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: ListApiKeys200Response?, _ error: Error?) -> Void)
```

List API keys

Lists the API keys of the user the calling key belongs to, newest first, revoked ones included: name, the visible prefix of the token, scope (read or read_write), the projects a key is limited to (project_scoped, project_ids; an empty list on an account-wide key), when it was created and last used, and when it was revoked. The secret token is only ever returned once, by POST /api_keys. Requires an account-wide `read_write` scope API key: a key limited to some projects answers ERR_KEY_PROJECT_SCOPED. Still answers after the account moves below the Scale plan, so old keys can be found and revoked. A team member needs the API Keys permission and sees only their own keys.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let page = 987 // Int |  (optional)
let perPage = 987 // Int | Default 20, max 100 (optional)

// List API keys
APIKeysAPI.listApiKeys(page: page, perPage: perPage) { (response, error) in
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
 **page** | **Int** |  | [optional] 
 **perPage** | **Int** | Default 20, max 100 | [optional] 

### Return type

[**ListApiKeys200Response**](ListApiKeys200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeApiKey**
```swift
    open class func revokeApiKey(id: Int, completion: @escaping (_ data: RevokeApiKey200Response?, _ error: Error?) -> Void)
```

Revoke an API key

Revokes an API key of the user the calling key belongs to: it stops working immediately and cannot be restored. Revoking a key that is already revoked answers the same way and keeps its original revocation time. A key of another user answers ERR_NOT_FOUND. The calling key can revoke itself. Requires an account-wide `read_write` scope API key: a key limited to some projects answers ERR_KEY_PROJECT_SCOPED. Still answers after the account moves below the Scale plan. A team member needs permission to delete API keys.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let id = 987 // Int | The key id from GET /api_keys

// Revoke an API key
APIKeysAPI.revokeApiKey(id: id) { (response, error) in
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
 **id** | **Int** | The key id from GET /api_keys | 

### Return type

[**RevokeApiKey200Response**](RevokeApiKey200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

