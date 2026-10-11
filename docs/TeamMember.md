# TeamMember

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | 
**email** | **String** |  | 
**name** | **String** |  | [optional] 
**role** | **String** | The account owner is listed first; everyone else who joined is a member. | 
**status** | **String** | A blocked member cannot sign in or use the API until unblocked in the app. | 
**permissionRole** | **String** | Access level of a member: full_access, view_only, custom or account_role. Null for the owner. | 
**accountRole** | [**TeamAccountRole**](TeamAccountRole.md) |  | 
**permissions** | [String: [String]] | What the person can do, feature key to the verbs granted (read, create, update, delete), resolved from their role. Null for the account owner, who can do everything. | 
**accountAdmin** | **Bool** | A co-owner, who can manage the team. | 
**billingAccess** | **Bool** | Can open Billing and Plans (always true for the owner). | 
**allProjects** | **Bool** | Has access to every project of the account, including future ones. | 
**projectIds** | **[Int]** | The projects a member is limited to; empty when all_projects is true. | 
**lastSignInAt** | **Date** |  | [optional] 
**joinedAt** | **Date** | When the member accepted the invitation; null for the owner and for members added without one. | [optional] 
**createdAt** | **Date** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


