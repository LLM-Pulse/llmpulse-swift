# StoreConnectionResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**platform** | **String** | The store platform, e.g. shopify | 
**domain** | **String** | The store domain as compared: lowercase, without scheme, www or path | 
**project** | [**StoreConnectionResponseProject**](StoreConnectionResponseProject.md) |  | 
**ambiguous** | **Bool** | True when several live projects match the store domain (for example one project per market). project is then null and the app asks the key holder to pick from candidates. | 
**candidates** | [StoreConnectionResponseCandidatesInner] | Every live project of the account, for a project picker | 
**account** | [**StoreConnectionResponseAccount**](StoreConnectionResponseAccount.md) |  | 
**requestId** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


