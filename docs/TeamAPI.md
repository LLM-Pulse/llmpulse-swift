# TeamAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTeamInvitation**](TeamAPI.md#createteaminvitation) | **POST** /team_invitations | Invite a team member
[**listTeamInvitations**](TeamAPI.md#listteaminvitations) | **GET** /team_invitations | List pending team invitations
[**listTeamMembers**](TeamAPI.md#listteammembers) | **GET** /team_members | List team members
[**removeTeamMember**](TeamAPI.md#removeteammember) | **DELETE** /team_members/{id} | Remove a team member
[**revokeTeamInvitation**](TeamAPI.md#revoketeaminvitation) | **DELETE** /team_invitations/{id} | Revoke a pending team invitation


# **createTeamInvitation**
```swift
    open class func createTeamInvitation(createTeamInvitationRequest: CreateTeamInvitationRequest, completion: @escaping (_ data: CreateTeamInvitation201Response?, _ error: Error?) -> Void)
```

Invite a team member

Invites someone to the account team with the same rules as the Team Members settings page, and sends them the invitation email (email_sent is false when the email provider refused it; the invitation still exists, so revoke it and invite again once the address is fixed). Send project_ids, or all_projects: true for every project (for a team member inviting, every project they can access). The account owner and co-owners choose the access with permission_role: full_access (default), view_only, custom (with permissions, feature key to verbs) or account_role (with account_role_id). A team member with permission to invite cannot choose access: leave those fields out and the invitation copies their own permissions. Only the account owner can set account_admin (co-owner) or billing_access. An address already registered on the platform, or with an invitation pending, is refused with ERR_INVALID_PARAM (revoke the pending one first). An account that cannot add more team members, or that reached its daily limit of invitations sent through the API and MCP (revoked ones count), answers ERR_LIMIT_REACHED; the message says which. Requires a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let createTeamInvitationRequest = createTeamInvitation_request(email: "email_example", projectIds: [123], allProjects: false, permissionRole: "permissionRole_example", accountRoleId: 123, permissions: "TODO", accountAdmin: false, billingAccess: false) // CreateTeamInvitationRequest | 

// Invite a team member
TeamAPI.createTeamInvitation(createTeamInvitationRequest: createTeamInvitationRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTeamInvitationRequest** | [**CreateTeamInvitationRequest**](CreateTeamInvitationRequest.md) |  | 

### Return type

[**CreateTeamInvitation201Response**](CreateTeamInvitation201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTeamInvitations**
```swift
    open class func listTeamInvitations(page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: ListTeamInvitations200Response?, _ error: Error?) -> Void)
```

List pending team invitations

Lists invitations that have not been accepted yet: the address, the access and projects the person will get, when the invitation was sent and when its link expires. An accepted invitation keeps its id and moves to GET /team_members. Same access rules as GET /team_members.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let page = 987 // Int |  (optional)
let perPage = 987 // Int | Default 20, max 100 (optional)

// List pending team invitations
TeamAPI.listTeamInvitations(page: page, perPage: perPage) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int** |  | [optional] 
 **perPage** | **Int** | Default 20, max 100 | [optional] 

### Return type

[**ListTeamInvitations200Response**](ListTeamInvitations200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTeamMembers**
```swift
    open class func listTeamMembers(page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: ListTeamMembers200Response?, _ error: Error?) -> Void)
```

List team members

Lists the account owner first, then every team member who joined, with their access level (permission_role, account role and the resulting permissions), co-owner and billing flags, project access, status (active or blocked) and last sign-in. Pending invitations are listed by GET /team_invitations; GET /account limits.team_members.used counts both. Available to the account owner, co-owners and team members with the Team Members permission. A key limited to some projects answers ERR_KEY_PROJECT_SCOPED: the team belongs to the whole account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let page = 987 // Int |  (optional)
let perPage = 987 // Int | Default 20, max 100 (optional)

// List team members
TeamAPI.listTeamMembers(page: page, perPage: perPage) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int** |  | [optional] 
 **perPage** | **Int** | Default 20, max 100 | [optional] 

### Return type

[**ListTeamMembers200Response**](ListTeamMembers200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeTeamMember**
```swift
    open class func removeTeamMember(id: Int, completion: @escaping (_ data: RemoveTeamMember200Response?, _ error: Error?) -> Void)
```

Remove a team member

Removes a member from the team, as the settings page does: their sessions and API keys stop working at once and their user account is deleted in the background shortly after. Account owner or co-owner only; a co-owner cannot remove the owner, another co-owner or themselves. The owner cannot be removed. Pending invitations are revoked with DELETE /team_invitations/{id}; an id that is not a member of the account answers ERR_NOT_FOUND. Requires a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let id = 987 // Int | The member id from GET /team_members

// Remove a team member
TeamAPI.removeTeamMember(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The member id from GET /team_members | 

### Return type

[**RemoveTeamMember200Response**](RemoveTeamMember200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeTeamInvitation**
```swift
    open class func revokeTeamInvitation(id: Int, completion: @escaping (_ data: RevokeTeamInvitation200Response?, _ error: Error?) -> Void)
```

Revoke a pending team invitation

Revokes a pending invitation: its link stops working immediately. Account owner or co-owner only, and a co-owner cannot revoke an invitation that makes someone a co-owner. Members who already joined are removed with DELETE /team_members/{id}; an id that is not a pending invitation of the account answers ERR_NOT_FOUND. Requires a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let id = 987 // Int | The invitation id from GET /team_invitations

// Revoke a pending team invitation
TeamAPI.revokeTeamInvitation(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int** | The invitation id from GET /team_invitations | 

### Return type

[**RevokeTeamInvitation200Response**](RevokeTeamInvitation200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

