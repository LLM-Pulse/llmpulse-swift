# CustomReportSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | 
**name** | **String** |  | 
**dateRange** | [**CustomReportDateRange**](CustomReportDateRange.md) |  | 
**schedule** | [**CustomReportSchedule**](CustomReportSchedule.md) |  | 
**recipientsCount** | **Int** |  | 
**published** | **Bool** | Whether the shared link is published | 
**publicLinkActive** | **Bool** | Whether the shared link opens (published and not made inside a client portal) | 
**passwordProtected** | **Bool** |  | 
**portalOnly** | **Bool** | Made inside a client portal, so it cannot be shared or emailed | 
**widgetCount** | **Int** |  | 
**widgets** | [CustomReportWidgetRef] |  | 
**lastSentAt** | **Date** | When the report was last emailed, on its schedule or with Send now | [optional] 
**createdAt** | **Date** |  | 
**updatedAt** | **Date** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


