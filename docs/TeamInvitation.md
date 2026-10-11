# TeamInvitation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** | Kept by the member once they accept, when they move to GET /team_members. | 
**email** | **String** |  | 
**permissionRole** | **String** |  | 
**accountRole** | [**TeamAccountRole**](TeamAccountRole.md) |  | 
**permissions** | [String: [String]] | What the person can do, feature key to the verbs granted (read, create, update, delete), resolved from their role. Null for the account owner, who can do everything. | 
**accountAdmin** | **Bool** |  | 
**billingAccess** | **Bool** |  | 
**allProjects** | **Bool** |  | 
**projectIds** | **[Int]** |  | 
**invitedAt** | **Date** | When the invitation email was last sent. | [optional] 
**expiresAt** | **Date** | When the invitation link stops working. | [optional] 
**createdAt** | **Date** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


