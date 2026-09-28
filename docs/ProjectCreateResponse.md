# ProjectCreateResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project** | **JSONValue** | Same shape as GET /dimensions/projects/{id} | [optional] 
**prompts** | [**ProjectCreateResponsePrompts**](ProjectCreateResponsePrompts.md) |  | [optional] 
**competitors** | [**ProjectCreateResponseCompetitors**](ProjectCreateResponseCompetitors.md) |  | [optional] 
**collections** | [ProjectCreateResponseCollectionsInner] | Collections created from the request&#39;s collections field (empty when none were sent; absent on an idempotent replay) | [optional] 
**sameDomainProjects** | [ProjectCreateResponseSameDomainProjectsInner] | Projects the caller can already see on the same domain (absent on an idempotent replay). Informational only: the create is never blocked, since one domain tracked per market is a normal setup. | [optional] 
**emailSubscription** | [**ProjectCreateResponseEmailSubscription**](ProjectCreateResponseEmailSubscription.md) |  | [optional] 
**limits** | [**ProjectCreateResponseLimits**](ProjectCreateResponseLimits.md) |  | [optional] 
**idempotent** | **Bool** | Present and true only on external_identifier replays | [optional] 
**requestId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


