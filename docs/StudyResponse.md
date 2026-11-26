# StudyResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | 
**title** | **String** |  | 
**studyType** | **String** | brand_set, sector, geo, topic or custom | 
**cadence** | **String** | one_shot or monthly | 
**status** | **String** | active or archived | 
**projectId** | **Int** | The project the study is attached to; null for an account-level study | 
**subjectsCount** | **Int** |  | 
**aiModels** | **[String]** | Analyst models the study runs on | 
**outputLanguageCode** | **String** | ISO 639-1 code of the language the reports are written in | 
**createdAt** | **Date** |  | 
**lastReportAt** | **Date** | When the latest report started; null before the first one | 
**brief** | **String** | What the study asks the analyst models; null when none was written | 
**subjects** | **[String]** | Names of the subjects it compares | 
**dimensions** | **[String]** | Keys of the dimensions it scores, as the dimension filter takes them | 
**reports** | [ReputationReportSummary] | The 24 latest reports, newest first | 
**requestId** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


