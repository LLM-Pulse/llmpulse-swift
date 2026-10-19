# UpdateProjectDraftRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**step** | **String** |  | 
**name** | **String** |  | [optional] 
**brandName** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**industry** | **[String]** |  | [optional] 
**matchingNames** | **[String]** | Brand-name variants used to detect mentions (details step). At most 50 names of up to 100 characters each; the step stores the list as sent, and finalize refuses a longer list or name with ERR_INVALID_PARAM (422) | [optional] 
**externalIdentifier** | **String** |  | [optional] 
**prompts** | **[String]** |  | [optional] 
**competitors** | **[JSONValue]** | Competitors step: objects {domain, brand_name, matching_names}, capped by plan. Each competitor&#39;s matching_names takes at most 50 names of up to 100 characters, checked at finalize like POST /projects | [optional] 
**youtubeChannelUrl** | **String** |  | [optional] 
**instagramProfileUrl** | **String** |  | [optional] 
**facebookPageUrl** | **String** |  | [optional] 
**tiktokProfileUrl** | **String** |  | [optional] 
**appStoreUrl** | **String** |  | [optional] 
**googlePlayUrl** | **String** |  | [optional] 
**suggest** | **Bool** |  | [optional] [default to true]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


