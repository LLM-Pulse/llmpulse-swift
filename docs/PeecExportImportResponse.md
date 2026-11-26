# PeecExportImportResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | 
**importId** | **Int** |  | 
**status** | **String** | The import was accepted and finishes in the background | 
**prompts** | **Int** | Distinct prompts of the file, per country and language; each becomes a tracked prompt of the project | 
**newPrompts** | **Int** | The prompts the project does not hold yet, counted against the plan | 
**plannedAnswers** | **Int** | Weekly answers the import files (prompts x tracked AI models x weeks) | 
**models** | **[String: String]** | Each AI model name of the file that is imported, with the tracked AI model its answers are filed under | 
**skippedModels** | **[String]** | AI model names of the file whose answers are skipped, because the account does not track them | 
**detectedBrands** | **[String]** | Brand names the export&#39;s mentions column lists (up to 50), none of them created as competitors | 
**appUrl** | **String** | Opens the project&#39;s prompts in the app | 
**requestId** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


