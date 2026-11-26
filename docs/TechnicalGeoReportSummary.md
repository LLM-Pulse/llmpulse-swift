# TechnicalGeoReportSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | 
**reportType** | **String** | The report_type requested (agent_readiness for ai_readiness) | 
**projectId** | **Int** |  | 
**batchId** | **Int** | Bundle the report was created in; null for a report created on its own | 
**url** | **String** | The page analysed; null for the domain-level types (robots_txt, agent_readiness, llms_txt, ai_visibility) | 
**domain** | **String** |  | 
**countryCode** | **String** | Set only on llms_txt and ai_visibility reports | 
**outputLanguageCode** | **String** | ISO 639-1 code an llms_txt report was requested in; null for an llms_txt report written in the website&#39;s own language and for every other type | 
**status** | **String** | Depends on report_type. Every type ends completed or failed; ai_visibility can also end insufficient_data | 
**resultAvailable** | **Bool** | Whether status is completed | 
**overallScore** | **Double** | Null until the report completes, and always for llms_txt | 
**createdAt** | **Date** |  | 
**updatedAt** | **Date** |  | 
**appUrl** | **String** | Opens this report in the app | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


