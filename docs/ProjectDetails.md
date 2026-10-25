# ProjectDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | [optional] 
**name** | **String** | Internal project label (sidebar, settings, admin) | [optional] 
**brandName** | **String** | LLM-facing brand label (used in prompts and customer-facing charts). Null when not set, in which case prompts and charts use &#x60;name&#x60;. | [optional] 
**tracked** | **Bool** | Whether scheduled runs include this project. False when it is paused, or when the plan&#39;s project limit leaves it out (the oldest projects up to the limit run), so its prompts do not run | 
**untrackedReason** | **String** | Why tracked is false: paused or project_limit. Null when tracked | 
**url** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**matchingNames** | **[String]** |  | [optional] 
**additionalOwnedDomains** | **[String]** | Other domains the brand owns (at most 10, each a website&#39;s own domain covering its subdomains), whose citations count as owned like the project website. Empty when none | [optional] 
**industry** | **JSONValue** | Industry as stored: one key as a string (e.g. SAAS), or an array of key strings when the project was created with a list or the in-app multi-select. Deliberately untyped so generated clients decode either shape | [optional] 
**businessModel** | **String** |  | [optional] 
**businessModelOther** | **String** | Set only when business_model is OTHER | [optional] 
**primaryProducts** | **[String]** |  | [optional] 
**targetAudience** | **String** |  | [optional] 
**brandVoice** | **String** |  | [optional] 
**goals** | **String** |  | [optional] 
**countryCode** | **String** |  | [optional] 
**languageCode** | **String** |  | [optional] 
**paused** | **Bool** |  | [optional] 
**googlePlayId** | **String** |  | [optional] 
**appStoreId** | **String** |  | [optional] 
**createdAt** | **Date** |  | [optional] 
**promptLimit** | **Int** | The most prompts this project can hold, set by the account owner or a co-owner (Account Settings &gt; Prompt Limits). Null when the project has no limit of its own; the account&#39;s plan allowance applies either way | [optional] 
**stats** | [**ProjectDetailsAllOfStats**](ProjectDetailsAllOfStats.md) |  | [optional] 
**dataCoverage** | [**ProjectDetailsAllOfDataCoverage**](ProjectDetailsAllOfDataCoverage.md) |  | [optional] 
**searchConsole** | [**ProjectDetailsAllOfSearchConsole**](ProjectDetailsAllOfSearchConsole.md) |  | [optional] 
**aiTraffic** | [**ProjectDetailsAllOfAiTraffic**](ProjectDetailsAllOfAiTraffic.md) |  | [optional] 
**agentTraffic** | [**ProjectDetailsAllOfAgentTraffic**](ProjectDetailsAllOfAgentTraffic.md) |  | [optional] 
**requestId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


