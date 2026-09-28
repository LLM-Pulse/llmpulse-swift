# ProjectCreateRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**websiteUrl** | **String** | Public HTTP(S) URL with a DNS hostname or public IP address. Credentials, private and special IP addresses, localhost and internal hostnames are rejected. | 
**name** | **String** | Project name, as plain text. It can be changed later with PATCH /projects/{id} | 
**mainCountry** | **String** |  | 
**mainLanguage** | **String** |  | 
**brandName** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**industry** | **[String]** | Industry keys, case-insensitive; a single key string is also accepted. An unknown key returns ERR_INVALID_PARAM listing the valid keys (the same list as the in-app industry picker, e.g. TECHNOLOGY, SAAS, ECOMMERCE) | [optional] 
**businessModel** | **String** | Business model key (e.g. B2B_SAAS, MARKETPLACE); unknown keys are rejected | [optional] 
**businessModelOther** | **String** | Free-text business model, only accepted when business_model is OTHER; rejected against any other key | [optional] 
**targetAudience** | **String** | Who the brand sells to. Context for Recommendations and GEO Writer (Brand Book) | [optional] 
**brandVoice** | **String** | Tone of voice guidance for generated content (Brand Book) | [optional] 
**goals** | **String** | What the brand wants to achieve. Context for GEO Writer and prompt suggestions | [optional] 
**primaryProducts** | **[String]** | Main products or services | [optional] 
**matchingNames** | **[String]** |  | [optional] 
**prompts** | **[String]** |  | [optional] 
**collections** | [ProjectCreateRequestCollectionsInner] | Collections (prompt tags) created with the project, each tagging prompts of this request by their exact text, so no separate tagging calls are needed. A text that is not in prompts returns ERR_INVALID_PARAM. A team member also needs Tags: Create permission. | [optional] 
**competitors** | [ProjectCreateRequestCompetitorsInner] |  | [optional] 
**ownedMedia** | [**ProjectCreateRequestOwnedMedia**](ProjectCreateRequestOwnedMedia.md) |  | [optional] 
**useSubdomain** | **Bool** |  | [optional] [default to false]
**weeklyEmailSubscribed** | **Bool** |  | [optional] [default to false]
**externalIdentifier** | **String** | Embed-enabled (Enterprise) accounts only; other accounts receive ERR_PLAN_REQUIRED. Idempotency key and embed-session join key, unique per account | [optional] 
**executePromptsImmediately** | **Bool** |  | [optional] [default to true]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


