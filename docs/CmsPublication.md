# CmsPublication

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | [optional] 
**platform** | **String** |  | [optional] 
**siteUrl** | **String** |  | [optional] 
**status** | **String** | queued and sending are on their way; unknown means a send timed out and the next attempt looks the draft up before creating one; drafted carries remote_id and edit_url; failed carries error_code | [optional] 
**title** | **String** |  | [optional] 
**slug** | **String** |  | [optional] 
**sourceUrl** | **String** | For an update task, the page the draft revises | [optional] 
**remoteId** | **Int** | WordPress post id of the draft | [optional] 
**remoteStatus** | **String** | WordPress status of the post when the draft was created (draft) | [optional] 
**remoteUrl** | **String** |  | [optional] 
**editUrl** | **String** | The post&#39;s edit screen in the WordPress admin | [optional] 
**errorCode** | **String** | Why the send failed, for example reconnect_required, missing_capability, unreachable or rejected | [optional] 
**createdAt** | **Date** |  | [optional] 
**sentAt** | **Date** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


