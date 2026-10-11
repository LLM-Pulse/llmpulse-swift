# SearchConsoleAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSearchConsolePages**](SearchConsoleAPI.md#getsearchconsolepages) | **GET** /search_console/pages | Top Search Console pages (Growth+)
[**getSearchConsoleQueries**](SearchConsoleAPI.md#getsearchconsolequeries) | **GET** /search_console/queries | Top Search Console queries (Growth+)
[**getSearchConsoleRows**](SearchConsoleAPI.md#getsearchconsolerows) | **GET** /search_console/rows | Search Console rows by several dimensions (Growth+)
[**getSearchConsoleSummary**](SearchConsoleAPI.md#getsearchconsolesummary) | **GET** /search_console/summary | Search Console summary (Growth+)
[**getSearchConsoleTimeseries**](SearchConsoleAPI.md#getsearchconsoletimeseries) | **GET** /search_console/timeseries | Search Console time series (Growth+)


# **getSearchConsolePages**
```swift
    open class func getSearchConsolePages(projectId: Int, range: Int? = nil, from: Date? = nil, to: Date? = nil, sort: Sort_getSearchConsolePages? = nil, page: Int? = nil, perPage: Int? = nil, startRow: Int? = nil, output: Output_getSearchConsolePages? = nil, searchType: SearchType_getSearchConsolePages? = nil, filters: String? = nil, dataState: DataState_getSearchConsolePages? = nil, aggregationType: AggregationType_getSearchConsolePages? = nil, completion: @escaping (_ data: SearchConsoleListResponse?, _ error: Error?) -> Void)
```

Top Search Console pages (Growth+)

Top Google Search Console landing pages over a date range, ranked by impressions, clicks, ctr or position, paginated. Requires a connected Search Console property (Growth+). X-Search-Console-Backend identifies stored or live reads. Stored reads use synced data without contacting Google. Live reads return ERR_SEARCH_CONSOLE_ACCESS_REVOKED (403) for revoked Google access; reconnect the property in Preferences > Project Settings > Data Connections. They return ERR_SEARCH_CONSOLE_UPSTREAM (503) when Google Search Console is unavailable or over quota; wait for the number of seconds in Retry-After before retrying. total counts the rows returned by one Google request, up to 25,000; truncated: true means that limit was reached, and start_row reads the next block. Page rows are counted per page rather than per property, so they can differ from the totals. Sorting and pagination apply to the available set. Stored reads cannot answer this endpoint and return ERR_INVALID_PARAM.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let range = 987 // Int | Number of days to look back, today included (alternative to from/to). At most 487, Google's retention. (optional)
let from = Date() // Date | Start date (YYYY-MM-DD). Defaults to 30 days ago. (optional)
let to = Date() // Date | End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. (optional)
let sort = "sort_example" // String |  (optional) (default to .impressions)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let startRow = 987 // Int | Google ranks rows by clicks and returns at most 25,000 per request. start_row moves that window down the ranking (e.g. 25000 for the next block); sort and pagination apply within the window. (optional) (default to 0)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)
let searchType = "searchType_example" // String | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. (optional) (default to .web)
let filters = "filters_example" // String | Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters=[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]=page&filters[][operator]=contains&filters[][expression]=/blog/ is also accepted. (optional)
let dataState = "dataState_example" // String | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. (optional) (default to ._final)
let aggregationType = "aggregationType_example" // String | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. (optional) (default to .auto)

// Top Search Console pages (Growth+)
SearchConsoleAPI.getSearchConsolePages(projectId: projectId, range: range, from: from, to: to, sort: sort, page: page, perPage: perPage, startRow: startRow, output: output, searchType: searchType, filters: filters, dataState: dataState, aggregationType: aggregationType) { (response, error) in
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
 **range** | **Int** | Number of days to look back, today included (alternative to from/to). At most 487, Google&#39;s retention. | [optional] 
 **from** | **Date** | Start date (YYYY-MM-DD). Defaults to 30 days ago. | [optional] 
 **to** | **Date** | End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. | [optional] 
 **sort** | **String** |  | [optional] [default to .impressions]
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]
 **startRow** | **Int** | Google ranks rows by clicks and returns at most 25,000 per request. start_row moves that window down the ranking (e.g. 25000 for the next block); sort and pagination apply within the window. | [optional] [default to 0]
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 
 **searchType** | **String** | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. | [optional] [default to .web]
 **filters** | **String** | Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters&#x3D;[{\&quot;dimension\&quot;:\&quot;page\&quot;,\&quot;operator\&quot;:\&quot;contains\&quot;,\&quot;expression\&quot;:\&quot;/blog/\&quot;}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]&#x3D;page&amp;filters[][operator]&#x3D;contains&amp;filters[][expression]&#x3D;/blog/ is also accepted. | [optional] 
 **dataState** | **String** | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. | [optional] [default to ._final]
 **aggregationType** | **String** | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. | [optional] [default to .auto]

### Return type

[**SearchConsoleListResponse**](SearchConsoleListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSearchConsoleQueries**
```swift
    open class func getSearchConsoleQueries(projectId: Int, range: Int? = nil, from: Date? = nil, to: Date? = nil, sort: Sort_getSearchConsoleQueries? = nil, page: Int? = nil, perPage: Int? = nil, startRow: Int? = nil, output: Output_getSearchConsoleQueries? = nil, searchType: SearchType_getSearchConsoleQueries? = nil, filters: String? = nil, dataState: DataState_getSearchConsoleQueries? = nil, aggregationType: AggregationType_getSearchConsoleQueries? = nil, completion: @escaping (_ data: SearchConsoleListResponse?, _ error: Error?) -> Void)
```

Top Search Console queries (Growth+)

Top Google Search Console search queries over a date range, ranked by impressions, clicks, ctr or position, paginated. Excludes anonymized queries; for headline totals use /search_console/summary. Requires a connected Search Console property (Growth+). X-Search-Console-Backend identifies stored or live reads. Stored reads use synced data without contacting Google. Live reads return ERR_SEARCH_CONSOLE_ACCESS_REVOKED (403) for revoked Google access; reconnect the property in Preferences > Project Settings > Data Connections. They return ERR_SEARCH_CONSOLE_UPSTREAM (503) when Google Search Console is unavailable or over quota; wait for the number of seconds in Retry-After before retrying. total counts the rows returned by one Google request, up to 25,000; truncated: true means that limit was reached, so the rows add up to less than the totals, and start_row reads the next block. Sorting and pagination apply to the available set. Stored reads cannot answer this endpoint and return ERR_INVALID_PARAM.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let range = 987 // Int | Number of days to look back, today included (alternative to from/to). At most 487, Google's retention. (optional)
let from = Date() // Date | Start date (YYYY-MM-DD). Defaults to 30 days ago. (optional)
let to = Date() // Date | End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. (optional)
let sort = "sort_example" // String |  (optional) (default to .impressions)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let startRow = 987 // Int | Google ranks rows by clicks and returns at most 25,000 per request. start_row moves that window down the ranking (e.g. 25000 for the next block); sort and pagination apply within the window. (optional) (default to 0)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)
let searchType = "searchType_example" // String | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. (optional) (default to .web)
let filters = "filters_example" // String | Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters=[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]=page&filters[][operator]=contains&filters[][expression]=/blog/ is also accepted. (optional)
let dataState = "dataState_example" // String | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. (optional) (default to ._final)
let aggregationType = "aggregationType_example" // String | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. (optional) (default to .auto)

// Top Search Console queries (Growth+)
SearchConsoleAPI.getSearchConsoleQueries(projectId: projectId, range: range, from: from, to: to, sort: sort, page: page, perPage: perPage, startRow: startRow, output: output, searchType: searchType, filters: filters, dataState: dataState, aggregationType: aggregationType) { (response, error) in
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
 **range** | **Int** | Number of days to look back, today included (alternative to from/to). At most 487, Google&#39;s retention. | [optional] 
 **from** | **Date** | Start date (YYYY-MM-DD). Defaults to 30 days ago. | [optional] 
 **to** | **Date** | End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. | [optional] 
 **sort** | **String** |  | [optional] [default to .impressions]
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]
 **startRow** | **Int** | Google ranks rows by clicks and returns at most 25,000 per request. start_row moves that window down the ranking (e.g. 25000 for the next block); sort and pagination apply within the window. | [optional] [default to 0]
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 
 **searchType** | **String** | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. | [optional] [default to .web]
 **filters** | **String** | Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters&#x3D;[{\&quot;dimension\&quot;:\&quot;page\&quot;,\&quot;operator\&quot;:\&quot;contains\&quot;,\&quot;expression\&quot;:\&quot;/blog/\&quot;}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]&#x3D;page&amp;filters[][operator]&#x3D;contains&amp;filters[][expression]&#x3D;/blog/ is also accepted. | [optional] 
 **dataState** | **String** | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. | [optional] [default to ._final]
 **aggregationType** | **String** | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. | [optional] [default to .auto]

### Return type

[**SearchConsoleListResponse**](SearchConsoleListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSearchConsoleRows**
```swift
    open class func getSearchConsoleRows(projectId: Int, dimensions: String, range: Int? = nil, from: Date? = nil, to: Date? = nil, sort: Sort_getSearchConsoleRows? = nil, page: Int? = nil, perPage: Int? = nil, startRow: Int? = nil, output: Output_getSearchConsoleRows? = nil, searchType: SearchType_getSearchConsoleRows? = nil, filters: String? = nil, dataState: DataState_getSearchConsoleRows? = nil, aggregationType: AggregationType_getSearchConsoleRows? = nil, completion: @escaping (_ data: SearchConsoleRowsResponse?, _ error: Error?) -> Void)
```

Search Console rows by several dimensions (Growth+)

Google Search Console rows grouped by 1 to 3 dimensions (date, country, device, page, query, searchAppearance) over a date range, each row carrying its dimension values as fields plus impressions, clicks, ctr (0..1) and position, ranked by impressions, clicks, ctr or position, paginated. Google ranks rows by clicks and returns at most 25,000 per request (truncated: true when reached); start_row moves that window. Query rows exclude anonymized queries, so rows add up to less than the summary totals. Requires a connected Search Console property (Growth+) and live reads: stored reads return ERR_INVALID_PARAM. Live reads return ERR_SEARCH_CONSOLE_ACCESS_REVOKED (403) for revoked Google access and ERR_SEARCH_CONSOLE_UPSTREAM (503) when Google Search Console is unavailable or over quota; wait for the number of seconds in Retry-After before retrying. A combination Google refuses comes back as ERR_INVALID_PARAM with its reason.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let dimensions = "dimensions_example" // String | Comma-separated dimensions to group by, 1 to 3 of date, country, device, page, query, searchAppearance. Each becomes a field of every row; country and device values are lowercase.
let range = 987 // Int | Number of days to look back, today included (alternative to from/to). At most 487, Google's retention. (optional)
let from = Date() // Date | Start date (YYYY-MM-DD). Defaults to 30 days ago. (optional)
let to = Date() // Date | End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. (optional)
let sort = "sort_example" // String |  (optional) (default to .impressions)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let startRow = 987 // Int | Google ranks rows by clicks and returns at most 25,000 per request. start_row moves that window down the ranking (e.g. 25000 for the next block); sort and pagination apply within the window. (optional) (default to 0)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)
let searchType = "searchType_example" // String | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. (optional) (default to .web)
let filters = "filters_example" // String | Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters=[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]=page&filters[][operator]=contains&filters[][expression]=/blog/ is also accepted. (optional)
let dataState = "dataState_example" // String | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. (optional) (default to ._final)
let aggregationType = "aggregationType_example" // String | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. (optional) (default to .auto)

// Search Console rows by several dimensions (Growth+)
SearchConsoleAPI.getSearchConsoleRows(projectId: projectId, dimensions: dimensions, range: range, from: from, to: to, sort: sort, page: page, perPage: perPage, startRow: startRow, output: output, searchType: searchType, filters: filters, dataState: dataState, aggregationType: aggregationType) { (response, error) in
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
 **dimensions** | **String** | Comma-separated dimensions to group by, 1 to 3 of date, country, device, page, query, searchAppearance. Each becomes a field of every row; country and device values are lowercase. | 
 **range** | **Int** | Number of days to look back, today included (alternative to from/to). At most 487, Google&#39;s retention. | [optional] 
 **from** | **Date** | Start date (YYYY-MM-DD). Defaults to 30 days ago. | [optional] 
 **to** | **Date** | End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. | [optional] 
 **sort** | **String** |  | [optional] [default to .impressions]
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]
 **startRow** | **Int** | Google ranks rows by clicks and returns at most 25,000 per request. start_row moves that window down the ranking (e.g. 25000 for the next block); sort and pagination apply within the window. | [optional] [default to 0]
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 
 **searchType** | **String** | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. | [optional] [default to .web]
 **filters** | **String** | Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters&#x3D;[{\&quot;dimension\&quot;:\&quot;page\&quot;,\&quot;operator\&quot;:\&quot;contains\&quot;,\&quot;expression\&quot;:\&quot;/blog/\&quot;}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]&#x3D;page&amp;filters[][operator]&#x3D;contains&amp;filters[][expression]&#x3D;/blog/ is also accepted. | [optional] 
 **dataState** | **String** | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. | [optional] [default to ._final]
 **aggregationType** | **String** | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. | [optional] [default to .auto]

### Return type

[**SearchConsoleRowsResponse**](SearchConsoleRowsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSearchConsoleSummary**
```swift
    open class func getSearchConsoleSummary(projectId: Int, range: Int? = nil, from: Date? = nil, to: Date? = nil, dimension: Dimension_getSearchConsoleSummary? = nil, limit: Int? = nil, searchType: SearchType_getSearchConsoleSummary? = nil, filters: String? = nil, dataState: DataState_getSearchConsoleSummary? = nil, aggregationType: AggregationType_getSearchConsoleSummary? = nil, completion: @escaping (_ data: SearchConsoleSummaryResponse?, _ error: Error?) -> Void)
```

Search Console summary (Growth+)

Google Search Console headline totals (impressions, clicks, ctr as a 0..1 fraction, average position) for the project over a date range. Pass dimension=country, device, page, query or searchAppearance to also receive the breakdown aggregated over the range, capped by limit. With filters and no dimension, totals are the complete figure Google reports for that filter. Breakdown rows are capped by limit and by Google's 25,000-row maximum; breakdown_truncated: true means rows were left out. Query rows exclude anonymized queries, and page and searchAppearance rows are counted per page rather than per property, so breakdown rows can differ from the totals. Requires the project to have a connected Search Console property and the Growth plan or above; otherwise returns ERR_SEARCH_CONSOLE_NOT_CONNECTED or ERR_PLAN_REQUIRED. X-Search-Console-Backend identifies stored or live reads. Stored reads use synced data without contacting Google. Live reads return ERR_SEARCH_CONSOLE_ACCESS_REVOKED (403) for revoked Google access; reconnect the property in Preferences > Project Settings > Data Connections. They return ERR_SEARCH_CONSOLE_UPSTREAM (503) when Google Search Console is unavailable or over quota; wait for the number of seconds in Retry-After before retrying.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let range = 987 // Int | Number of days to look back, today included (alternative to from/to). At most 487, Google's retention. (optional)
let from = Date() // Date | Start date (YYYY-MM-DD). Defaults to 30 days ago. (optional)
let to = Date() // Date | End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. (optional)
let dimension = "dimension_example" // String | Optional breakdown aggregated over the range. country and device are lowercased; page and query keep the casing Google returns, because a page URL is case sensitive. (optional)
let limit = 987 // Int | Maximum breakdown rows, sorted by impressions descending. Default and maximum 1000. Use /search_console/queries or /search_console/pages to page through up to 25,000 rows. (optional)
let searchType = "searchType_example" // String | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. (optional) (default to .web)
let filters = "filters_example" // String | Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters=[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]=page&filters[][operator]=contains&filters[][expression]=/blog/ is also accepted. (optional)
let dataState = "dataState_example" // String | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. (optional) (default to ._final)
let aggregationType = "aggregationType_example" // String | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. (optional) (default to .auto)

// Search Console summary (Growth+)
SearchConsoleAPI.getSearchConsoleSummary(projectId: projectId, range: range, from: from, to: to, dimension: dimension, limit: limit, searchType: searchType, filters: filters, dataState: dataState, aggregationType: aggregationType) { (response, error) in
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
 **range** | **Int** | Number of days to look back, today included (alternative to from/to). At most 487, Google&#39;s retention. | [optional] 
 **from** | **Date** | Start date (YYYY-MM-DD). Defaults to 30 days ago. | [optional] 
 **to** | **Date** | End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. | [optional] 
 **dimension** | **String** | Optional breakdown aggregated over the range. country and device are lowercased; page and query keep the casing Google returns, because a page URL is case sensitive. | [optional] 
 **limit** | **Int** | Maximum breakdown rows, sorted by impressions descending. Default and maximum 1000. Use /search_console/queries or /search_console/pages to page through up to 25,000 rows. | [optional] 
 **searchType** | **String** | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. | [optional] [default to .web]
 **filters** | **String** | Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters&#x3D;[{\&quot;dimension\&quot;:\&quot;page\&quot;,\&quot;operator\&quot;:\&quot;contains\&quot;,\&quot;expression\&quot;:\&quot;/blog/\&quot;}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]&#x3D;page&amp;filters[][operator]&#x3D;contains&amp;filters[][expression]&#x3D;/blog/ is also accepted. | [optional] 
 **dataState** | **String** | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. | [optional] [default to ._final]
 **aggregationType** | **String** | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. | [optional] [default to .auto]

### Return type

[**SearchConsoleSummaryResponse**](SearchConsoleSummaryResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSearchConsoleTimeseries**
```swift
    open class func getSearchConsoleTimeseries(projectId: Int, range: Int? = nil, from: Date? = nil, to: Date? = nil, granularity: Granularity_getSearchConsoleTimeseries? = nil, output: Output_getSearchConsoleTimeseries? = nil, searchType: SearchType_getSearchConsoleTimeseries? = nil, filters: String? = nil, dataState: DataState_getSearchConsoleTimeseries? = nil, aggregationType: AggregationType_getSearchConsoleTimeseries? = nil, completion: @escaping (_ data: SearchConsoleTimeseriesResponse?, _ error: Error?) -> Void)
```

Search Console time series (Growth+)

Google Search Console series (impressions, clicks, ctr, position) bucketed by day, week or month, property-wide unless filters narrows it. Requires a connected Search Console property (Growth+). X-Search-Console-Backend identifies stored or live reads. Stored reads use synced data without contacting Google. Live reads return ERR_SEARCH_CONSOLE_ACCESS_REVOKED (403) for revoked Google access; reconnect the property in Preferences > Project Settings > Data Connections. They return ERR_SEARCH_CONSOLE_UPSTREAM (503) when Google Search Console is unavailable or over quota; wait for the number of seconds in Retry-After before retrying.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let range = 987 // Int | Number of days to look back, today included (alternative to from/to). At most 487, Google's retention. (optional)
let from = Date() // Date | Start date (YYYY-MM-DD). Defaults to 30 days ago. (optional)
let to = Date() // Date | End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. (optional)
let granularity = "granularity_example" // String |  (optional)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)
let searchType = "searchType_example" // String | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. (optional) (default to .web)
let filters = "filters_example" // String | Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters=[{\"dimension\":\"page\",\"operator\":\"contains\",\"expression\":\"/blog/\"}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]=page&filters[][operator]=contains&filters[][expression]=/blog/ is also accepted. (optional)
let dataState = "dataState_example" // String | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. (optional) (default to ._final)
let aggregationType = "aggregationType_example" // String | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. (optional) (default to .auto)

// Search Console time series (Growth+)
SearchConsoleAPI.getSearchConsoleTimeseries(projectId: projectId, range: range, from: from, to: to, granularity: granularity, output: output, searchType: searchType, filters: filters, dataState: dataState, aggregationType: aggregationType) { (response, error) in
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
 **range** | **Int** | Number of days to look back, today included (alternative to from/to). At most 487, Google&#39;s retention. | [optional] 
 **from** | **Date** | Start date (YYYY-MM-DD). Defaults to 30 days ago. | [optional] 
 **to** | **Date** | End date (YYYY-MM-DD), inclusive. Defaults to today. Google publishes data with a 2-3 day lag, so data_through in the response says how far it reaches. | [optional] 
 **granularity** | **String** |  | [optional] 
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 
 **searchType** | **String** | Which search surface to measure. Defaults to web. discover and googleNews carry no query dimension, so Google rejects /search_console/queries for them. | [optional] [default to .web]
 **filters** | **String** | Narrow the query; every entry must match (AND). Send the whole list as one JSON value: filters&#x3D;[{\&quot;dimension\&quot;:\&quot;page\&quot;,\&quot;operator\&quot;:\&quot;contains\&quot;,\&quot;expression\&quot;:\&quot;/blog/\&quot;}] (URL-encoded). An array of objects has no query-parameter form a generated client can produce, so the string is what the official SDKs send; see the SearchConsoleFilters schema for the shape it encodes. includingRegex and excludingRegex take RE2 syntax. At most 10 entries, expression at most 500 characters. The bracket form filters[][dimension]&#x3D;page&amp;filters[][operator]&#x3D;contains&amp;filters[][expression]&#x3D;/blog/ is also accepted. | [optional] 
 **dataState** | **String** | final (default) counts only rows Google has finalized. all also counts the most recent days, which are still being filled in and will change. | [optional] [default to ._final]
 **aggregationType** | **String** | How Google counts impressions. auto (default) is what Search Console shows (by page when page is grouped or filtered, else by property). Google rejects byProperty with a page dimension or filter. | [optional] [default to .auto]

### Return type

[**SearchConsoleTimeseriesResponse**](SearchConsoleTimeseriesResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

