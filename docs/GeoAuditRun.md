# GeoAuditRun

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sequence** | **Int** | Run number within the audit, starting at 1 | [optional] 
**status** | **String** |  | [optional] 
**trigger** | **String** |  | [optional] 
**score** | **Double** |  | [optional] 
**grade** | **String** |  | [optional] 
**scoreDelta** | **Double** | Score change against the previous completed run | [optional] 
**comparableToPrevious** | **Bool** | False when the checks or the audit settings changed since the previous run, so a diff may reflect that change | [optional] 
**newIssues** | **Int** |  | [optional] 
**fixedIssues** | **Int** |  | [optional] 
**regressedIssues** | **Int** |  | [optional] 
**error** | **String** |  | [optional] 
**engineVersion** | **String** |  | [optional] 
**createdAt** | **Date** |  | [optional] 
**finishedAt** | **Date** |  | [optional] 
**appUrl** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


