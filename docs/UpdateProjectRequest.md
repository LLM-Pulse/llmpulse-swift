# UpdateProjectRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Project name shown in the app. A label: it does not change mention detection unless brand_name is empty. Cannot be blank | [optional] 
**brandName** | **String** | Brand name used to detect mentions. Applies to future runs; it does not rewrite history | [optional] 
**description** | **String** | What the brand does. Context for Recommendations and GEO Writer (Brand Book) | [optional] 
**industry** | **String** | Single industry key (e.g. SAAS), stored as sent; an array of keys is also accepted and stored as an array, like the in-app multi-select. Unknown keys are rejected with the valid keys listed | [optional] 
**businessModel** | **String** | Business model key (e.g. B2B_SAAS); unknown keys are rejected | [optional] 
**businessModelOther** | **String** | Free-text business model, only accepted when business_model is OTHER; rejected against any other key | [optional] 
**targetAudience** | **String** | Who the brand sells to (Brand Book) | [optional] 
**brandVoice** | **String** | Tone of voice guidance for generated content (Brand Book) | [optional] 
**goals** | **String** | What the brand wants to achieve. Context for GEO Writer and prompt suggestions | [optional] 
**primaryProducts** | **[String]** | Full replacement list of the main products or services | [optional] 
**matchingNames** | **[String]** | FULL replacement list of the brand-name variants used to detect mentions; send every variant to keep | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


