# ReputationReportSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Report id for GET /reputation/reports/{id} | 
**status** | **String** |  | 
**createdAt** | **Date** |  | 
**processedAt** | **Date** |  | [optional] 
**availableModels** | **[String]** | Analyst models that produced data | 
**missingModels** | **[String]** | Analyst models with no data yet | 
**errorMessage** | **String** | Why the report failed; null unless status is failed | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


