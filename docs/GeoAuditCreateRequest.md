# GeoAuditCreateRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | 
**target** | **String** | The domain (site-wide types) or page URL to audit | 
**auditTypes** | **[String]** | One or more audit types; each becomes its own audit and starts its first run | 
**cadence** | **String** | once (default), weekly or monthly. Weekly and monthly need a type whose checks are tracked and count against the plan limit of recurring audits | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


