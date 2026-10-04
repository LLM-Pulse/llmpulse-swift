# GetAccount200Response

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**plan** | **String** | Plan key (starter, growth, scale, ...). Absent for a key limited to some projects. | [optional] 
**planName** | **String** | Display name of the plan to show people (e.g. Scale++ for the scaleplusplus key). Absent for a key limited to some projects. | [optional] 
**trackingFrequency** | **String** | How often prompts run (weekly, daily, monthly, ...) | [optional] 
**role** | **String** | Whether the key belongs to the account owner or a team member | [optional] 
**apiKeyProjectIds** | **[Int]** | The projects the calling API key is limited to; null for a key that sees the whole account, and for OAuth | [optional] 
**subscription** | [**GetAccount200ResponseSubscription**](GetAccount200ResponseSubscription.md) |  | [optional] 
**limits** | [**GetAccount200ResponseLimits**](GetAccount200ResponseLimits.md) |  | [optional] 
**rateLimits** | [**GetAccount200ResponseRateLimits**](GetAccount200ResponseRateLimits.md) |  | [optional] 
**requestId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


