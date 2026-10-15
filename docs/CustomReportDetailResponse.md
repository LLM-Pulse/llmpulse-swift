# CustomReportDetailResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | 
**id** | **Int** |  | 
**name** | **String** |  | 
**dateRange** | [**CustomReportDateRange**](CustomReportDateRange.md) |  | 
**schedule** | [**CustomReportSchedule**](CustomReportSchedule.md) |  | 
**recipientsCount** | **Int** |  | [optional] 
**published** | **Bool** |  | [optional] 
**publicLinkActive** | **Bool** |  | [optional] 
**passwordProtected** | **Bool** |  | [optional] 
**portalOnly** | **Bool** |  | [optional] 
**lastSentAt** | **Date** | When the report was last emailed, on its schedule or with Send now | [optional] 
**createdAt** | **Date** |  | [optional] 
**updatedAt** | **Date** |  | [optional] 
**filters** | [**CustomReportFilters**](CustomReportFilters.md) |  | 
**comparePrevious** | **Bool** |  | [optional] 
**attachExcel** | **Bool** |  | [optional] 
**manualSendAvailableAt** | **Date** | When the 10-minute cooldown after the last manual send ends; null when none is running | [optional] 
**generatedAt** | **Date** |  | 
**blocks** | [CustomReportBlock] | The report layout in order | 
**widgets** | [CustomReportWidget] |  | 
**requestId** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


