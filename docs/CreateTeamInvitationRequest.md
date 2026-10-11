# CreateTeamInvitationRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** |  | 
**projectIds** | **[Int]** | Projects the member can access. Send this or all_projects true. | [optional] 
**allProjects** | **Bool** | Access to every project, including future ones | [optional] 
**permissionRole** | **String** | Default full_access. Owner and co-owners only. | [optional] 
**accountRoleId** | **Int** | One of the account&#39;s roles, with permission_role account_role | [optional] 
**permissions** | [String: [String]] | With permission_role custom: feature key to the verbs granted (read, create, update, delete), for example {\&quot;overview\&quot;: [\&quot;read\&quot;], \&quot;prompts\&quot;: [\&quot;read\&quot;, \&quot;create\&quot;]} | [optional] 
**accountAdmin** | **Bool** | Make the member a co-owner. Account owner only. | [optional] 
**billingAccess** | **Bool** | Access to Billing and Plans. Account owner only. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


