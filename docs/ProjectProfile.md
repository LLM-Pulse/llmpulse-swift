# ProjectProfile

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | 
**name** | **String** |  | 
**brandName** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**industry** | **JSONValue** | Industry as stored: one key as a string (e.g. SAAS), or an array of key strings. Deliberately untyped so generated clients decode either shape | [optional] 
**businessModel** | **String** |  | [optional] 
**businessModelOther** | **String** | Set only when business_model is OTHER | [optional] 
**targetAudience** | **String** |  | [optional] 
**primaryProducts** | **[String]** |  | [optional] 
**brandVoice** | **String** |  | [optional] 
**goals** | **String** |  | [optional] 
**matchingNames** | **[String]** |  | 
**additionalOwnedDomains** | **[String]** | Other domains the brand owns (at most 10, each a website&#39;s own domain covering its subdomains), whose citations count as owned like the project website. Empty when none | 
**promptLimit** | **Int** | Maximum number of active prompts this project may hold; null when only the account quota applies | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


