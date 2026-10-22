# PromptGenerationRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | 
**source** | **String** | Which Add prompts generator to run | 
**query** | **String** | keyword: optional keyword or research query. topic and reddit: required topic (reddit: the brand when search_type&#x3D;brand). paa: one keyword, as an alternative to keywords. | [optional] 
**count** | **Int** | keyword and topic: how many suggestions to ask for, capped by the prompt slots left | [optional] [default to 20]
**countryCode** | **String** | ISO 3166-1 alpha-2 country of the suggestions (default the project country) | [optional] 
**languageCode** | **String** | ISO language code of the suggestions (default the project language) | [optional] 
**competitorId** | **Int** | keyword: write the suggestions around this competitor of the project | [optional] 
**searchType** | **String** | reddit: search discussions of a topic or a brand | [optional] [default to .topic]
**keywords** | **[String]** | paa: up to 5 keywords; each is a People Also Ask lookup counted against the account&#39;s 24-hour allowance | [optional] 
**sourceCountryCode** | **String** | translate: country of the prompts to translate | [optional] 
**sourceLanguageCode** | **String** | translate: language of the prompts to translate | [optional] 
**minWords** | **Int** | search_console: skip queries shorter than this many words | [optional] [default to 0]
**allCountries** | **Bool** | search_console: include queries from every country instead of country_code only | [optional] [default to false]
**property** | **String** | search_console: the property id to read queries from (GET /search_console/properties lists them); the primary property when omitted | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


