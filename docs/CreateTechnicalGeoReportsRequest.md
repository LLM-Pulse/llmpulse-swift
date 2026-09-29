# CreateTechnicalGeoReportsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | 
**url** | **String** |  | 
**countryCode** | **String** | Defaults to the project country | [optional] 
**outputLanguageCode** | **String** | ISO 639-1 code of the language the llms.txt files are written in (for example es), or auto to keep the language detected on the website. Defaults to the project language, else en. Only the llms.txt report of the bundle uses it; the response echoes the code used, or auto. An unsupported code returns 422 ERR_INVALID_PARAM | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


