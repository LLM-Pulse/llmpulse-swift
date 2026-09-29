# TechnicalGEOReportsAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTechnicalGeoReports**](TechnicalGEOReportsAPI.md#createtechnicalgeoreports) | **POST** /technical_geo_reports | Run technical GEO analysis
[**getTechnicalGeoReport**](TechnicalGEOReportsAPI.md#gettechnicalgeoreport) | **GET** /technical_geo_reports/{id} | Get a technical GEO report
[**listTechnicalGeoReports**](TechnicalGEOReportsAPI.md#listtechnicalgeoreports) | **GET** /technical_geo_reports | List technical GEO reports
[**revertTechnicalGeoReportContent**](TechnicalGEOReportsAPI.md#reverttechnicalgeoreportcontent) | **POST** /technical_geo_reports/{id}/revert_content | Revert llms.txt report content
[**updateTechnicalGeoReportContent**](TechnicalGEOReportsAPI.md#updatetechnicalgeoreportcontent) | **PATCH** /technical_geo_reports/{id}/content | Edit llms.txt report content


# **createTechnicalGeoReports**
```swift
    open class func createTechnicalGeoReports(createTechnicalGeoReportsRequest: CreateTechnicalGeoReportsRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Run technical GEO analysis

Launches the full nine-report technical GEO analysis bundle for a URL + country. The bundle starts only when at least nine daily units remain. Each successfully created report uses one unit; a report that is not created uses none. Daily allocations vary by account. Each report runs in a background job. Requires a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let createTechnicalGeoReportsRequest = createTechnicalGeoReports_request(projectId: 123, url: "url_example", countryCode: "countryCode_example", outputLanguageCode: "outputLanguageCode_example") // CreateTechnicalGeoReportsRequest | 

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

Returns the current status and the full result_data once the report is completed. While it is running, result_data is null and poll_after_seconds tells clients when to check again. Summaries carry output_language_code (the ISO 639-1 code an llms_txt report was requested in; null for an llms_txt report written in the website's own language, requested as auto or chosen in the app, and for every other report type); a completed llms_txt result_data also returns content_version (send it back to PATCH /technical_geo_reports/{id}/content), manually_edited_at, original_llms_txt_content and original_llms_full_txt_content (the generated files, kept from the first manual edit in the app, the API or MCP) and metadata.output_language_code.

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

# **revertTechnicalGeoReportContent**
```swift
    open class func revertTechnicalGeoReportContent(id: Int, technicalGeoReportContentRevertRequest: TechnicalGeoReportContentRevertRequest, completion: @escaping (_ data: LlmsTxtTechnicalGeoReport?, _ error: Error?) -> Void)
```

Revert llms.txt report content

Discards every manual edit on the llms_txt report and restores the llms.txt and llms-full.txt files exactly as they were generated. Returns ERR_INVALID_PARAM when the report has no manual edits or report_type is not llms_txt. Requires a `read_write` scope API key and, for team members, create permission on GEO Optimization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let id = 987 // Int | Report id returned by POST /technical_geo_reports or GET /technical_geo_reports
let technicalGeoReportContentRevertRequest = TechnicalGeoReportContentRevertRequest(projectId: 123, reportType: "reportType_example") // TechnicalGeoReportContentRevertRequest | 

// Revert llms.txt report content
TechnicalGEOReportsAPI.revertTechnicalGeoReportContent(id: id, technicalGeoReportContentRevertRequest: technicalGeoReportContentRevertRequest) { (response, error) in
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
 **id** | **Int** | Report id returned by POST /technical_geo_reports or GET /technical_geo_reports | 
 **technicalGeoReportContentRevertRequest** | [**TechnicalGeoReportContentRevertRequest**](TechnicalGeoReportContentRevertRequest.md) |  | 

### Return type

[**LlmsTxtTechnicalGeoReport**](LlmsTxtTechnicalGeoReport.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTechnicalGeoReportContent**
```swift
    open class func updateTechnicalGeoReportContent(id: Int, technicalGeoReportContentUpdateRequest: TechnicalGeoReportContentUpdateRequest, completion: @escaping (_ data: TechnicalGeoReportContentUpdateResponse?, _ error: Error?) -> Void)
```

Edit llms.txt report content

Replaces the llms.txt and llms-full.txt files of a completed llms_txt report in place, without generating them again. `edits` maps llms_txt and/or llms_full_txt to the full replacement text. `content_version` must equal result_data.content_version of the report as last read; when the report changed since, the edit is refused as stale and the message names the current version. A missing or stale content_version, a blank file, a file over 200,000 characters, a value that is not text, an unknown file key, an empty `edits` object, a report that has not completed or a report_type other than llms_txt is rejected with ERR_INVALID_PARAM and nothing is written. Files are stored with Unix line endings and one trailing newline. A file identical to the stored one is ignored, and the response lists the files that actually changed. The first edit keeps the generated files in original_llms_txt_content and original_llms_full_txt_content so POST /technical_geo_reports/{id}/revert_content can restore them; running the report again creates a new report without these edits. Requires a `read_write` scope API key and, for team members, create permission on GEO Optimization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let id = 987 // Int | Report id returned by POST /technical_geo_reports or GET /technical_geo_reports
let technicalGeoReportContentUpdateRequest = TechnicalGeoReportContentUpdateRequest(projectId: 123, reportType: "reportType_example", contentVersion: "contentVersion_example", edits: TechnicalGeoReportContentUpdateRequest_edits(llmsTxt: "llmsTxt_example", llmsFullTxt: "llmsFullTxt_example")) // TechnicalGeoReportContentUpdateRequest | 

// Edit llms.txt report content
TechnicalGEOReportsAPI.updateTechnicalGeoReportContent(id: id, technicalGeoReportContentUpdateRequest: technicalGeoReportContentUpdateRequest) { (response, error) in
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
 **id** | **Int** | Report id returned by POST /technical_geo_reports or GET /technical_geo_reports | 
 **technicalGeoReportContentUpdateRequest** | [**TechnicalGeoReportContentUpdateRequest**](TechnicalGeoReportContentUpdateRequest.md) |  | 

### Return type

[**TechnicalGeoReportContentUpdateResponse**](TechnicalGeoReportContentUpdateResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

