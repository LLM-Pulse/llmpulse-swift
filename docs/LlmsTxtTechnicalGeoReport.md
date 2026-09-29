# LlmsTxtTechnicalGeoReport

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | [optional] 
**reportType** | **String** | Always llms_txt | [optional] 
**projectId** | **Int** |  | [optional] 
**batchId** | **Int** | Bundle the report was created in; null for a report created on its own | [optional] 
**url** | **String** | Always null for llms_txt reports; domain names the website | [optional] 
**domain** | **String** |  | [optional] 
**countryCode** | **String** |  | [optional] 
**outputLanguageCode** | **String** | ISO 639-1 code the files were requested in; null when they are written in the website&#39;s own language | [optional] 
**status** | **String** |  | [optional] 
**resultAvailable** | **Bool** |  | [optional] 
**overallScore** | **Double** | Always null for llms_txt reports | [optional] 
**createdAt** | **Date** |  | [optional] 
**updatedAt** | **Date** |  | [optional] 
**resultData** | [**LlmsTxtTechnicalGeoReportResultData**](LlmsTxtTechnicalGeoReportResultData.md) |  | [optional] 
**errorMessage** | **String** |  | [optional] 
**pollAfterSeconds** | **Int** | Seconds to wait before polling again while the report runs; null once it has finished | [optional] 
**appUrl** | **String** | Opens this report in the app | [optional] 
**requestId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


