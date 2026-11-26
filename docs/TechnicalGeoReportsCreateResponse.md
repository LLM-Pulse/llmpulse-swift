# TechnicalGeoReportsCreateResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | 
**url** | **String** | The URL analysed | 
**countryCode** | **String** | The country used, the project country when none was sent | 
**outputLanguageCode** | **String** | ISO 639-1 code the llms.txt files are written in, or auto for the website&#39;s own language | 
**batchId** | **Int** | Bundle id, for the batch_id filter of GET /technical_geo_reports; null when no report was created | 
**createdReports** | **[String]** | The report_type of every report created | 
**reportIds** | **[String: Int]** | The id of each created report, by report_type | 
**appUrls** | **[String: String]** | The link that opens each created report in the app, by report_type | 
**failedReports** | [TechnicalGeoReportsCreateResponseFailedReportsInner] | Reports that could not be created, with the reasons | 
**nextEndpoint** | **String** | Path template to poll each created report | 
**pollAfterSeconds** | **Int** | Seconds to wait before the first poll | 
**requestId** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


