# CreateApiKey201Response

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | 
**name** | **String** |  | 
**_prefix** | **String** | The visible start of the token, to recognize the key. Never the secret itself. | 
**scope** | **String** |  | 
**projectScoped** | **Bool** | True when the key is limited to project_ids; false for an account-wide key. | 
**projectIds** | **[Int]** | The projects the key is limited to; empty for an account-wide key. | 
**createdAt** | **Date** |  | 
**lastUsedAt** | **Date** | Updated at most once a minute. | 
**revokedAt** | **Date** |  | 
**token** | **String** | The secret to send as Bearer token. Shown only in this response. | 
**requestId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


