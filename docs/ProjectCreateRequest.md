# ProjectCreateRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**websiteUrl** | **String** | Public HTTP(S) URL with a DNS hostname or public IP address. Credentials, private and special IP addresses, localhost and internal hostnames are rejected. | 
**name** | **String** |  | 
**mainCountry** | **String** |  | 
**mainLanguage** | **String** |  | 
**brandName** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**industry** | **[String]** |  | [optional] 
**matchingNames** | **[String]** |  | [optional] 
**prompts** | **[String]** |  | [optional] 
**competitors** | [ProjectCreateRequestCompetitorsInner] |  | [optional] 
**ownedMedia** | [**ProjectCreateRequestOwnedMedia**](ProjectCreateRequestOwnedMedia.md) |  | [optional] 
**useSubdomain** | **Bool** |  | [optional] [default to false]
**weeklyEmailSubscribed** | **Bool** |  | [optional] [default to false]
**externalIdentifier** | **String** | Embed-enabled (Enterprise) accounts only; other accounts receive ERR_PLAN_REQUIRED. Idempotency key and embed-session join key, unique per account | [optional] 
**executePromptsImmediately** | **Bool** |  | [optional] [default to true]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


