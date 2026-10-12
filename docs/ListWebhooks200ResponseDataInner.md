# ListWebhooks200ResponseDataInner

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | [optional] 
**projectId** | **Int** |  | [optional] 
**eventType** | **String** |  | [optional] 
**targetUrl** | **String** |  | [optional] 
**disabled** | **Bool** | True when the subscription receives no more events, including when the API key or OAuth connection that created it was revoked. Creating it again with the same project, event and URL replaces it with a new subscription and secret. | [optional] 
**failureCount** | **Int** |  | [optional] 
**lastDeliveredAt** | **Date** |  | [optional] 
**createdAt** | **Date** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


