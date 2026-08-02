# SearchConsoleAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSearchConsolePages**](SearchConsoleAPI.md#getsearchconsolepages) | **GET** /search_console/pages | Top Search Console pages (Growth+)
[**getSearchConsoleQueries**](SearchConsoleAPI.md#getsearchconsolequeries) | **GET** /search_console/queries | Top Search Console queries (Growth+)
[**getSearchConsoleSummary**](SearchConsoleAPI.md#getsearchconsolesummary) | **GET** /search_console/summary | Search Console summary (Growth+)
[**getSearchConsoleTimeseries**](SearchConsoleAPI.md#getsearchconsoletimeseries) | **GET** /search_console/timeseries | Search Console time series (Growth+)


# **getSearchConsolePages**
```swift
    open class func getSearchConsolePages(projectId: Int, range: Int? = nil, from: Date? = nil, to: Date? = nil, sort: Sort_getSearchConsolePages? = nil, page: Int? = nil, perPage: Int? = nil, output: Output_getSearchConsolePages? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Top Search Console pages (Growth+)

Top Google Search Console landing pages over a date range, ranked by impressions, clicks, ctr or position, paginated. Requires a connected Search Console property (Growth+).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let range = 987 // Int | Number of days to look back (alternative to from/to) (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)
let sort = "sort_example" // String |  (optional) (default to .impressions)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// Top Search Console pages (Growth+)
SearchConsoleAPI.getSearchConsolePages(projectId: projectId, range: range, from: from, to: to, sort: sort, page: page, perPage: perPage, output: output) { (response, error) in
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
 **range** | **Int** | Number of days to look back (alternative to from/to) | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** |  | [optional] 
 **sort** | **String** |  | [optional] [default to .impressions]
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSearchConsoleQueries**
```swift
    open class func getSearchConsoleQueries(projectId: Int, range: Int? = nil, from: Date? = nil, to: Date? = nil, sort: Sort_getSearchConsoleQueries? = nil, page: Int? = nil, perPage: Int? = nil, output: Output_getSearchConsoleQueries? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Top Search Console queries (Growth+)

Top Google Search Console search queries over a date range, ranked by impressions, clicks, ctr or position, paginated. Knowingly undercounts anonymized queries; for exact totals use /search_console/summary. Requires a connected Search Console property (Growth+).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let range = 987 // Int | Number of days to look back (alternative to from/to) (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)
let sort = "sort_example" // String |  (optional) (default to .impressions)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// Top Search Console queries (Growth+)
SearchConsoleAPI.getSearchConsoleQueries(projectId: projectId, range: range, from: from, to: to, sort: sort, page: page, perPage: perPage, output: output) { (response, error) in
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
 **range** | **Int** | Number of days to look back (alternative to from/to) | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** |  | [optional] 
 **sort** | **String** |  | [optional] [default to .impressions]
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSearchConsoleSummary**
```swift
    open class func getSearchConsoleSummary(projectId: Int, range: Int? = nil, from: Date? = nil, to: Date? = nil, dimension: Dimension_getSearchConsoleSummary? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Search Console summary (Growth+)

Google Search Console headline totals (impressions, clicks, ctr as a 0..1 fraction, average position) for the project over a date range. Pass dimension=country or dimension=device to also receive the breakdown aggregated over the range. Requires the project to have a connected Search Console property and the Growth plan or above; otherwise returns ERR_SEARCH_CONSOLE_NOT_CONNECTED or ERR_PLAN_REQUIRED.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let range = 987 // Int | Number of days to look back (alternative to from/to) (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)
let dimension = "dimension_example" // String | Optional breakdown aggregated over the range (optional)

// Search Console summary (Growth+)
SearchConsoleAPI.getSearchConsoleSummary(projectId: projectId, range: range, from: from, to: to, dimension: dimension) { (response, error) in
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
 **range** | **Int** | Number of days to look back (alternative to from/to) | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** |  | [optional] 
 **dimension** | **String** | Optional breakdown aggregated over the range | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSearchConsoleTimeseries**
```swift
    open class func getSearchConsoleTimeseries(projectId: Int, range: Int? = nil, from: Date? = nil, to: Date? = nil, granularity: Granularity_getSearchConsoleTimeseries? = nil, output: Output_getSearchConsoleTimeseries? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Search Console time series (Growth+)

Google Search Console property-wide series (impressions, clicks, ctr, position) bucketed by day, week or month. Requires a connected Search Console property (Growth+).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let range = 987 // Int | Number of days to look back (alternative to from/to) (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)
let granularity = "granularity_example" // String |  (optional)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// Search Console time series (Growth+)
SearchConsoleAPI.getSearchConsoleTimeseries(projectId: projectId, range: range, from: from, to: to, granularity: granularity, output: output) { (response, error) in
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
 **range** | **Int** | Number of days to look back (alternative to from/to) | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** |  | [optional] 
 **granularity** | **String** |  | [optional] 
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

