# GEOAuditsAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**compareGeoAuditRuns**](GEOAuditsAPI.md#comparegeoauditruns) | **GET** /geo_audits/{id}/comparison | Compare two GEO audit runs
[**createGeoAudits**](GEOAuditsAPI.md#creategeoaudits) | **POST** /geo_audits | Create GEO audits
[**deleteGeoAudit**](GEOAuditsAPI.md#deletegeoaudit) | **DELETE** /geo_audits/{id} | Delete (archive) a GEO audit
[**getGeoAudit**](GEOAuditsAPI.md#getgeoaudit) | **GET** /geo_audits/{id} | Get a GEO audit
[**getGeoAuditRun**](GEOAuditsAPI.md#getgeoauditrun) | **GET** /geo_audits/{geo_audit_id}/runs/{sequence} | Get a GEO audit run
[**listGeoAlerts**](GEOAuditsAPI.md#listgeoalerts) | **GET** /geo_alerts | List GEO audit alerts
[**listGeoAuditFindings**](GEOAuditsAPI.md#listgeoauditfindings) | **GET** /geo_audits/{geo_audit_id}/runs/{sequence}/findings | List the findings of a GEO audit run
[**listGeoAuditIssues**](GEOAuditsAPI.md#listgeoauditissues) | **GET** /geo_audits/{geo_audit_id}/issues | List the issues of a GEO audit
[**listGeoAuditRuns**](GEOAuditsAPI.md#listgeoauditruns) | **GET** /geo_audits/{geo_audit_id}/runs | List the runs of a GEO audit
[**listGeoAudits**](GEOAuditsAPI.md#listgeoaudits) | **GET** /geo_audits | List GEO audits
[**runGeoAudit**](GEOAuditsAPI.md#rungeoaudit) | **POST** /geo_audits/{geo_audit_id}/runs | Run a GEO audit now
[**updateGeoAudit**](GEOAuditsAPI.md#updategeoaudit) | **PATCH** /geo_audits/{id} | Update a GEO audit
[**updateGeoAuditIssue**](GEOAuditsAPI.md#updategeoauditissue) | **PATCH** /geo_audits/{geo_audit_id}/issues/{id} | Accept or reopen a GEO audit issue


# **compareGeoAuditRuns**
```swift
    open class func compareGeoAuditRuns(projectId: Int, id: String, fromRun: Int? = nil, toRun: Int? = nil, completion: @escaping (_ data: GeoAuditComparison?, _ error: Error?) -> Void)
```

Compare two GEO audit runs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let id = "id_example" // String | Audit id
let fromRun = 987 // Int | Run number to compare from (default the run before to_run) (optional)
let toRun = 987 // Int | Run number to compare to (default the latest completed run) (optional)

// Compare two GEO audit runs
GEOAuditsAPI.compareGeoAuditRuns(projectId: projectId, id: id, fromRun: fromRun, toRun: toRun) { (response, error) in
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
 **id** | **String** | Audit id | 
 **fromRun** | **Int** | Run number to compare from (default the run before to_run) | [optional] 
 **toRun** | **Int** | Run number to compare to (default the latest completed run) | [optional] 

### Return type

[**GeoAuditComparison**](GeoAuditComparison.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createGeoAudits**
```swift
    open class func createGeoAudits(geoAuditCreateRequest: GeoAuditCreateRequest, completion: @escaping (_ data: GeoAuditCreateResponse?, _ error: Error?) -> Void)
```

Create GEO audits

Creates one audit per entry of audit_types and starts the first run of each (it counts against the manual run limits: 6 per audit per hour, 200 per account per day). cadence weekly or monthly is accepted only for types whose checks are tracked run to run, and counts against the plan limit of active recurring audits (ERR_LIMIT_REACHED). Creating an audit that was archived restores it with its history. Requires a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let geoAuditCreateRequest = GeoAuditCreateRequest(projectId: 123, target: "target_example", auditTypes: ["auditTypes_example"], cadence: "cadence_example") // GeoAuditCreateRequest | 

// Create GEO audits
GEOAuditsAPI.createGeoAudits(geoAuditCreateRequest: geoAuditCreateRequest) { (response, error) in
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
 **geoAuditCreateRequest** | [**GeoAuditCreateRequest**](GeoAuditCreateRequest.md) |  | 

### Return type

[**GeoAuditCreateResponse**](GeoAuditCreateResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGeoAudit**
```swift
    open class func deleteGeoAudit(projectId: Int, id: String, completion: @escaping (_ data: GeoAuditArchived?, _ error: Error?) -> Void)
```

Delete (archive) a GEO audit

Archives the audit. Requires a `read_write` scope API key and, for team members, delete permission on GEO Optimization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let id = "id_example" // String | Audit id

// Delete (archive) a GEO audit
GEOAuditsAPI.deleteGeoAudit(projectId: projectId, id: id) { (response, error) in
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
 **id** | **String** | Audit id | 

### Return type

[**GeoAuditArchived**](GeoAuditArchived.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGeoAudit**
```swift
    open class func getGeoAudit(projectId: Int, id: String, completion: @escaping (_ data: GeoAuditResponse?, _ error: Error?) -> Void)
```

Get a GEO audit

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let id = "id_example" // String | Audit id

// Get a GEO audit
GEOAuditsAPI.getGeoAudit(projectId: projectId, id: id) { (response, error) in
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
 **id** | **String** | Audit id | 

### Return type

[**GeoAuditResponse**](GeoAuditResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGeoAuditRun**
```swift
    open class func getGeoAuditRun(projectId: Int, geoAuditId: String, sequence: Int, completion: @escaping (_ data: GeoAuditRunDetail?, _ error: Error?) -> Void)
```

Get a GEO audit run

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let geoAuditId = "geoAuditId_example" // String | Audit id
let sequence = 987 // Int | Run number within the audit

// Get a GEO audit run
GEOAuditsAPI.getGeoAuditRun(projectId: projectId, geoAuditId: geoAuditId, sequence: sequence) { (response, error) in
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
 **geoAuditId** | **String** | Audit id | 
 **sequence** | **Int** | Run number within the audit | 

### Return type

[**GeoAuditRunDetail**](GeoAuditRunDetail.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGeoAlerts**
```swift
    open class func listGeoAlerts(projectId: Int, auditId: String? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: GeoAlertList?, _ error: Error?) -> Void)
```

List GEO audit alerts

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let auditId = "auditId_example" // String | Only alerts of this audit (optional)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)

// List GEO audit alerts
GEOAuditsAPI.listGeoAlerts(projectId: projectId, auditId: auditId, page: page, perPage: perPage) { (response, error) in
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
 **auditId** | **String** | Only alerts of this audit | [optional] 
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]

### Return type

[**GeoAlertList**](GeoAlertList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGeoAuditFindings**
```swift
    open class func listGeoAuditFindings(projectId: Int, geoAuditId: String, sequence: Int, page: Int? = nil, perPage: Int? = nil, output: Output_listGeoAuditFindings? = nil, completion: @escaping (_ data: GeoAuditFindingList?, _ error: Error?) -> Void)
```

List the findings of a GEO audit run

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let geoAuditId = "geoAuditId_example" // String | Audit id
let sequence = 987 // Int | Run number within the audit
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// List the findings of a GEO audit run
GEOAuditsAPI.listGeoAuditFindings(projectId: projectId, geoAuditId: geoAuditId, sequence: sequence, page: page, perPage: perPage, output: output) { (response, error) in
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
 **geoAuditId** | **String** | Audit id | 
 **sequence** | **Int** | Run number within the audit | 
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**GeoAuditFindingList**](GeoAuditFindingList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGeoAuditIssues**
```swift
    open class func listGeoAuditIssues(projectId: Int, geoAuditId: String, state: State_listGeoAuditIssues? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: GeoAuditIssueList?, _ error: Error?) -> Void)
```

List the issues of a GEO audit

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let geoAuditId = "geoAuditId_example" // String | Audit id
let state = "state_example" // String | open means open and not accepted; default all (optional)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)

// List the issues of a GEO audit
GEOAuditsAPI.listGeoAuditIssues(projectId: projectId, geoAuditId: geoAuditId, state: state, page: page, perPage: perPage) { (response, error) in
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
 **geoAuditId** | **String** | Audit id | 
 **state** | **String** | open means open and not accepted; default all | [optional] 
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]

### Return type

[**GeoAuditIssueList**](GeoAuditIssueList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGeoAuditRuns**
```swift
    open class func listGeoAuditRuns(projectId: Int, geoAuditId: String, page: Int? = nil, perPage: Int? = nil, output: Output_listGeoAuditRuns? = nil, completion: @escaping (_ data: GeoAuditRunList?, _ error: Error?) -> Void)
```

List the runs of a GEO audit

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let geoAuditId = "geoAuditId_example" // String | Audit id
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// List the runs of a GEO audit
GEOAuditsAPI.listGeoAuditRuns(projectId: projectId, geoAuditId: geoAuditId, page: page, perPage: perPage, output: output) { (response, error) in
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
 **geoAuditId** | **String** | Audit id | 
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**GeoAuditRunList**](GeoAuditRunList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGeoAudits**
```swift
    open class func listGeoAudits(projectId: Int, auditType: AuditType_listGeoAudits? = nil, status: Status_listGeoAudits? = nil, cadence: Cadence_listGeoAudits? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: GeoAuditList?, _ error: Error?) -> Void)
```

List GEO audits

Lists the project's audits, most recently updated first. Archived audits are left out unless status=archived.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let auditType = "auditType_example" // String |  (optional)
let status = "status_example" // String |  (optional)
let cadence = "cadence_example" // String |  (optional)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)

// List GEO audits
GEOAuditsAPI.listGeoAudits(projectId: projectId, auditType: auditType, status: status, cadence: cadence, page: page, perPage: perPage) { (response, error) in
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
 **auditType** | **String** |  | [optional] 
 **status** | **String** |  | [optional] 
 **cadence** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]

### Return type

[**GeoAuditList**](GeoAuditList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runGeoAudit**
```swift
    open class func runGeoAudit(projectId: Int, geoAuditId: String, completion: @escaping (_ data: GeoAuditRunResponse?, _ error: Error?) -> Void)
```

Run a GEO audit now

Starts a run and returns it with status queued; poll GET /geo_audits/{geo_audit_id}/runs/{sequence} until status is completed, failed or unreachable. Limited to 6 manual runs per audit per rolling hour and 200 per account per day (ERR_LIMIT_REACHED); scheduled runs do not count. Requires a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let geoAuditId = "geoAuditId_example" // String | Audit id

// Run a GEO audit now
GEOAuditsAPI.runGeoAudit(projectId: projectId, geoAuditId: geoAuditId) { (response, error) in
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
 **geoAuditId** | **String** | Audit id | 

### Return type

[**GeoAuditRunResponse**](GeoAuditRunResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGeoAudit**
```swift
    open class func updateGeoAudit(id: String, geoAuditUpdateRequest: GeoAuditUpdateRequest, completion: @escaping (_ data: GeoAuditResponse?, _ error: Error?) -> Void)
```

Update a GEO audit

Updates the schedule, the email alerts or the status. Making an audit recurring or resuming it counts against the plan limit of active recurring audits (ERR_LIMIT_REACHED). Requires a `read_write` scope API key and, for team members, update permission on GEO Optimization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let id = "id_example" // String | Audit id
let geoAuditUpdateRequest = GeoAuditUpdateRequest(projectId: 123, cadence: "cadence_example", scheduleDay: 123, scheduleHour: 123, status: "status_example", emailAlerts: false) // GeoAuditUpdateRequest | 

// Update a GEO audit
GEOAuditsAPI.updateGeoAudit(id: id, geoAuditUpdateRequest: geoAuditUpdateRequest) { (response, error) in
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
 **id** | **String** | Audit id | 
 **geoAuditUpdateRequest** | [**GeoAuditUpdateRequest**](GeoAuditUpdateRequest.md) |  | 

### Return type

[**GeoAuditResponse**](GeoAuditResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGeoAuditIssue**
```swift
    open class func updateGeoAuditIssue(geoAuditId: String, id: Int, geoAuditIssueUpdateRequest: GeoAuditIssueUpdateRequest, completion: @escaping (_ data: GeoAuditIssueResponse?, _ error: Error?) -> Void)
```

Accept or reopen a GEO audit issue

Requires a `read_write` scope API key and, for team members, update permission on GEO Optimization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let geoAuditId = "geoAuditId_example" // String | Audit id
let id = 987 // Int | Issue id
let geoAuditIssueUpdateRequest = GeoAuditIssueUpdateRequest(projectId: 123, accepted: false) // GeoAuditIssueUpdateRequest | 

// Accept or reopen a GEO audit issue
GEOAuditsAPI.updateGeoAuditIssue(geoAuditId: geoAuditId, id: id, geoAuditIssueUpdateRequest: geoAuditIssueUpdateRequest) { (response, error) in
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
 **geoAuditId** | **String** | Audit id | 
 **id** | **Int** | Issue id | 
 **geoAuditIssueUpdateRequest** | [**GeoAuditIssueUpdateRequest**](GeoAuditIssueUpdateRequest.md) |  | 

### Return type

[**GeoAuditIssueResponse**](GeoAuditIssueResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

