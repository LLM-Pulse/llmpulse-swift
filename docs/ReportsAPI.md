# ReportsAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTechnicalGeoReports**](ReportsAPI.md#createtechnicalgeoreports) | **POST** /technical_geo_reports | Run technical GEO analysis


# **createTechnicalGeoReports**
```swift
    open class func createTechnicalGeoReports(createTechnicalGeoReportsRequest: CreateTechnicalGeoReportsRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Run technical GEO analysis

Launches the full technical GEO analysis bundle (crawlability, schema, content readiness, discoverability, site structure, robots.txt, llms.txt, AI visibility) for a URL + country. Each report runs in a background job. Requires a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let createTechnicalGeoReportsRequest = createTechnicalGeoReports_request(projectId: 123, url: "url_example", countryCode: "countryCode_example") // CreateTechnicalGeoReportsRequest | 

// Run technical GEO analysis
ReportsAPI.createTechnicalGeoReports(createTechnicalGeoReportsRequest: createTechnicalGeoReportsRequest) { (response, error) in
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
 **createTechnicalGeoReportsRequest** | [**CreateTechnicalGeoReportsRequest**](CreateTechnicalGeoReportsRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

