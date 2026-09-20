# TechnicalGEOReportsAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTechnicalGeoReports**](TechnicalGEOReportsAPI.md#createtechnicalgeoreports) | **POST** /technical_geo_reports | Run technical GEO analysis
[**getTechnicalGeoReport**](TechnicalGEOReportsAPI.md#gettechnicalgeoreport) | **GET** /technical_geo_reports/{id} | Get a technical GEO report
[**listTechnicalGeoReports**](TechnicalGEOReportsAPI.md#listtechnicalgeoreports) | **GET** /technical_geo_reports | List technical GEO reports


# **createTechnicalGeoReports**
```swift
    open class func createTechnicalGeoReports(createTechnicalGeoReportsRequest: CreateTechnicalGeoReportsRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Run technical GEO analysis

Launches the full technical GEO analysis bundle (crawlability, schema, content readiness, discoverability, site structure, robots.txt, agent readiness, llms.txt, AI visibility) for a URL + country. Each report runs in a background job. Requires a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let createTechnicalGeoReportsRequest = createTechnicalGeoReports_request(projectId: 123, url: "url_example", countryCode: "countryCode_example") // CreateTechnicalGeoReportsRequest | 

// Run technical GEO analysis
TechnicalGEOReportsAPI.createTechnicalGeoReports(createTechnicalGeoReportsRequest: createTechnicalGeoReportsRequest) { (response, error) in
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

# **getTechnicalGeoReport**
```swift
    open class func getTechnicalGeoReport(projectId: Int, reportType: ReportType_getTechnicalGeoReport, id: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get a technical GEO report

Returns the current status and the full result_data once the report is completed. While it is running, result_data is null and poll_after_seconds tells clients when to check again.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let reportType = "reportType_example" // String | 
let id = 987 // Int | Report id returned by POST /technical_geo_reports or GET /technical_geo_reports

// Get a technical GEO report
TechnicalGEOReportsAPI.getTechnicalGeoReport(projectId: projectId, reportType: reportType, id: id) { (response, error) in
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
 **reportType** | **String** |  | 
 **id** | **Int** | Report id returned by POST /technical_geo_reports or GET /technical_geo_reports | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTechnicalGeoReports**
```swift
    open class func listTechnicalGeoReports(projectId: Int, reportType: ReportType_listTechnicalGeoReports, status: String? = nil, batchId: Int? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List technical GEO reports

Lists reports of one technical GEO type for a project, newest first. Use agent_readiness for the AI/Agent Readiness report.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let reportType = "reportType_example" // String | 
let status = "status_example" // String | Optional status filter; valid values depend on report_type (optional)
let batchId = 987 // Int | Optional batch id returned when the report bundle was created (optional)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)

// List technical GEO reports
TechnicalGEOReportsAPI.listTechnicalGeoReports(projectId: projectId, reportType: reportType, status: status, batchId: batchId, page: page, perPage: perPage) { (response, error) in
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
 **reportType** | **String** |  | 
 **status** | **String** | Optional status filter; valid values depend on report_type | [optional] 
 **batchId** | **Int** | Optional batch id returned when the report bundle was created | [optional] 
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

