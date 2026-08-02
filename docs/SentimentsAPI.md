# SentimentsAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listSentimentRecords**](SentimentsAPI.md#listsentimentrecords) | **GET** /sentiments | List sentiment records


# **listSentimentRecords**
```swift
    open class func listSentimentRecords(projectId: Int, competitorId: Int? = nil, brandOnly: Bool? = nil, analysis: Analysis_listSentimentRecords? = nil, model: Model_listSentimentRecords? = nil, collectionId: Int? = nil, countryCode: String? = nil, languageCode: String? = nil, from: Date? = nil, to: Date? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List sentiment records

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let competitorId = 987 // Int |  (optional)
let brandOnly = true // Bool |  (optional)
let analysis = "analysis_example" // String |  (optional)
let model = "model_example" // String | Filter by AI model. Models the API key's user has not enabled are silently dropped. (optional)
let collectionId = 987 // Int |  (optional)
let countryCode = "countryCode_example" // String | ISO country code (e.g. US, GB, DE) (optional)
let languageCode = "languageCode_example" // String | ISO language code (e.g. en, es, de) (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)

// List sentiment records
SentimentsAPI.listSentimentRecords(projectId: projectId, competitorId: competitorId, brandOnly: brandOnly, analysis: analysis, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, from: from, to: to, page: page, perPage: perPage) { (response, error) in
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
 **competitorId** | **Int** |  | [optional] 
 **brandOnly** | **Bool** |  | [optional] 
 **analysis** | **String** |  | [optional] 
 **model** | **String** | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collectionId** | **Int** |  | [optional] 
 **countryCode** | **String** | ISO country code (e.g. US, GB, DE) | [optional] 
 **languageCode** | **String** | ISO language code (e.g. en, es, de) | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** |  | [optional] 
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

