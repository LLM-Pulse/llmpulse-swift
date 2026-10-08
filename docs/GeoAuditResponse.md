# GeoAuditResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Stable audit id | [optional] 
**auditType** | **String** |  | [optional] 
**target** | **String** | The audited domain (site-wide types) or page URL, normalized | [optional] 
**countryCode** | **String** |  | [optional] 
**cadence** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**pausedReason** | **String** | user, or unreachable when three runs in a row could not reach the site | [optional] 
**schedule** | [**GeoAuditSchedule**](GeoAuditSchedule.md) |  | [optional] 
**nextRunAt** | **Date** |  | [optional] 
**emailAlerts** | **Bool** |  | [optional] 
**recurringAvailable** | **Bool** | Whether this audit type can run weekly or monthly | [optional] 
**checksTracked** | **Bool** | Whether runs of this type produce findings and issues, or a score only | [optional] 
**latestRun** | [**GeoAuditRun**](GeoAuditRun.md) |  | [optional] 
**openIssues** | **Int** |  | [optional] 
**openCriticalIssues** | **Int** |  | [optional] 
**createdAt** | **Date** |  | [optional] 
**appUrl** | **String** |  | [optional] 
**projectId** | **Int** |  | [optional] 
**requestId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


