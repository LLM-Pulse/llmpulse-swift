# ProjectsAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProject**](ProjectsAPI.md#createproject) | **POST** /projects | Create a project (fast mode)
[**createProjectDraft**](ProjectsAPI.md#createprojectdraft) | **POST** /project_drafts | Start a project draft (wizard step 1)
[**finalizeProjectDraft**](ProjectsAPI.md#finalizeprojectdraft) | **POST** /project_drafts/{id}/finalize | Finalize a draft into a real project
[**getProjectDetails**](ProjectsAPI.md#getprojectdetails) | **GET** /dimensions/projects/{id} | Project details
[**getProjectDraft**](ProjectsAPI.md#getprojectdraft) | **GET** /project_drafts/{id} | Read a project draft
[**listLocales**](ProjectsAPI.md#listlocales) | **GET** /dimensions/locales | List locales with data
[**listModels**](ProjectsAPI.md#listmodels) | **GET** /dimensions/models | List models with data
[**listProjects**](ProjectsAPI.md#listprojects) | **GET** /dimensions/projects | List projects
[**updateProject**](ProjectsAPI.md#updateproject) | **PATCH** /projects/{id} | Update a project profile (Brand Book)
[**updateProjectDraft**](ProjectsAPI.md#updateprojectdraft) | **PATCH** /project_drafts/{id} | Submit a wizard step


# **createProject**
```swift
    open class func createProject(projectCreateRequest: ProjectCreateRequest, completion: @escaping (_ data: ProjectCreateResponse?, _ error: Error?) -> Void)
```

Create a project (fast mode)

Create a complete project in one call: project fields, prompts (queued for execution and categorization), competitors, weekly email subscription. Idempotent via `external_identifier` (embed-enabled accounts only; replay returns 200 with the existing project). Requires a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectCreateRequest = ProjectCreateRequest(websiteUrl: "websiteUrl_example", name: "name_example", mainCountry: "mainCountry_example", mainLanguage: "mainLanguage_example", brandName: "brandName_example", description: "description_example", industry: ["industry_example"], businessModel: "businessModel_example", businessModelOther: "businessModelOther_example", targetAudience: "targetAudience_example", brandVoice: "brandVoice_example", goals: "goals_example", primaryProducts: ["primaryProducts_example"], matchingNames: ["matchingNames_example"], prompts: ["prompts_example"], competitors: [ProjectCreateRequest_competitors_inner(domain: "domain_example", brandName: "brandName_example", matchingNames: ["matchingNames_example"])], ownedMedia: ProjectCreateRequest_owned_media(youtubeChannelUrl: "youtubeChannelUrl_example", instagramProfileUrl: "instagramProfileUrl_example", facebookPageUrl: "facebookPageUrl_example", tiktokProfileUrl: "tiktokProfileUrl_example", appStoreUrl: "appStoreUrl_example", googlePlayUrl: "googlePlayUrl_example"), useSubdomain: false, weeklyEmailSubscribed: false, externalIdentifier: "externalIdentifier_example", executePromptsImmediately: false) // ProjectCreateRequest | 

// Create a project (fast mode)
ProjectsAPI.createProject(projectCreateRequest: projectCreateRequest) { (response, error) in
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
 **projectCreateRequest** | [**ProjectCreateRequest**](ProjectCreateRequest.md) |  | 

### Return type

[**ProjectCreateResponse**](ProjectCreateResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProjectDraft**
```swift
    open class func createProjectDraft(createProjectDraftRequest: CreateProjectDraftRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Start a project draft (wizard step 1)

Start the multi-step project-creation wizard. Returns a draft_id plus AI suggestions (name, description, industry, brand aliases) for the URL. Cold URLs can take up to ~2 minutes to analyze; pass suggest=false to skip AI and respond instantly. Drafts expire after 24h. Requires a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let createProjectDraftRequest = createProjectDraft_request(websiteUrl: "websiteUrl_example", mainCountry: "mainCountry_example", mainLanguage: "mainLanguage_example", useSubdomain: false, suggest: false, executePromptsImmediately: false) // CreateProjectDraftRequest | 

// Start a project draft (wizard step 1)
ProjectsAPI.createProjectDraft(createProjectDraftRequest: createProjectDraftRequest) { (response, error) in
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
 **createProjectDraftRequest** | [**CreateProjectDraftRequest**](CreateProjectDraftRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **finalizeProjectDraft**
```swift
    open class func finalizeProjectDraft(id: String, finalizeProjectDraftRequest: FinalizeProjectDraftRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Finalize a draft into a real project

Creates the project with all accumulated draft data (same effects as POST /projects). Idempotent: finalizing an already-finalized draft returns 200 with the existing project. Optional overrides: weekly_email_subscribed, execute_prompts_immediately.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let id = "id_example" // String | 
let finalizeProjectDraftRequest = finalizeProjectDraft_request(weeklyEmailSubscribed: false, executePromptsImmediately: false) // FinalizeProjectDraftRequest |  (optional)

// Finalize a draft into a real project
ProjectsAPI.finalizeProjectDraft(id: id, finalizeProjectDraftRequest: finalizeProjectDraftRequest) { (response, error) in
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
 **id** | **String** |  | 
 **finalizeProjectDraftRequest** | [**FinalizeProjectDraftRequest**](FinalizeProjectDraftRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectDetails**
```swift
    open class func getProjectDetails(id: Int, completion: @escaping (_ data: ProjectDetails?, _ error: Error?) -> Void)
```

Project details

Detailed info for one project: matching_names, industry, business model, primary products, target audience, brand voice, locale, app store IDs, stats (incl. prompts_by_brand_kind counts) and data_coverage (models, countries and languages with data).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let id = 987 // Int | 

// Project details
ProjectsAPI.getProjectDetails(id: id) { (response, error) in
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
 **id** | **Int** |  | 

### Return type

[**ProjectDetails**](ProjectDetails.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectDraft**
```swift
    open class func getProjectDraft(id: String, includeSuggestions: Bool? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Read a project draft

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let id = "id_example" // String | Draft id (draft_...)
let includeSuggestions = true // Bool | Cache-only: returns suggestions for the current step if already generated, never triggers AI (optional) (default to false)

// Read a project draft
ProjectsAPI.getProjectDraft(id: id, includeSuggestions: includeSuggestions) { (response, error) in
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
 **id** | **String** | Draft id (draft_...) | 
 **includeSuggestions** | **Bool** | Cache-only: returns suggestions for the current step if already generated, never triggers AI | [optional] [default to false]

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listLocales**
```swift
    open class func listLocales(projectId: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List locales with data

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID

// List locales with data
ProjectsAPI.listLocales(projectId: projectId) { (response, error) in
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
 **projectId** | **Int** | Project ID | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listModels**
```swift
    open class func listModels(projectId: Int, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List models with data

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID

// List models with data
ProjectsAPI.listModels(projectId: projectId) { (response, error) in
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
 **projectId** | **Int** | Project ID | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listProjects**
```swift
    open class func listProjects(output: Output_listProjects? = nil, completion: @escaping (_ data: ListProjects200Response?, _ error: Error?) -> Void)
```

List projects

All projects accessible with your API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// List projects
ProjectsAPI.listProjects(output: output) { (response, error) in
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
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**ListProjects200Response**](ListProjects200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProject**
```swift
    open class func updateProject(id: Int, updateProjectRequest: UpdateProjectRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update a project profile (Brand Book)

Updates the project profile, the same fields as Project Settings: brand_name, description, industry, business_model (plus business_model_other when it is OTHER), target_audience, brand_voice, goals, primary_products, matching_names. Send only the fields to change; unknown fields are rejected. All seven Brand Book fields feed every GEO Writer task and prompt suggestions; only industry, description, and target_audience help Recommendations. A matching_names change re-runs mention/citation matching over the project history in the background (rematching=true); further edits are rejected while that runs. Requires a `read_write` scope API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let id = 987 // Int | 
let updateProjectRequest = updateProject_request(brandName: "brandName_example", description: "description_example", industry: "industry_example", businessModel: "businessModel_example", businessModelOther: "businessModelOther_example", targetAudience: "targetAudience_example", brandVoice: "brandVoice_example", goals: "goals_example", primaryProducts: ["primaryProducts_example"], matchingNames: ["matchingNames_example"]) // UpdateProjectRequest | 

// Update a project profile (Brand Book)
ProjectsAPI.updateProject(id: id, updateProjectRequest: updateProjectRequest) { (response, error) in
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
 **id** | **Int** |  | 
 **updateProjectRequest** | [**UpdateProjectRequest**](UpdateProjectRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProjectDraft**
```swift
    open class func updateProjectDraft(id: String, updateProjectDraftRequest: UpdateProjectDraftRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Submit a wizard step

Submit one step (details, prompts, competitors, owned_media). Strict forward gating: a step is only accepted when every previous step is complete (`ERR_DRAFT_STATE` otherwise); completed steps can be resubmitted. Responds with the updated draft plus AI suggestions for the next step.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let id = "id_example" // String | 
let updateProjectDraftRequest = updateProjectDraft_request(step: "step_example", name: "name_example", brandName: "brandName_example", description: "description_example", industry: ["industry_example"], matchingNames: ["matchingNames_example"], externalIdentifier: "externalIdentifier_example", prompts: ["prompts_example"], competitors: [123], youtubeChannelUrl: "youtubeChannelUrl_example", instagramProfileUrl: "instagramProfileUrl_example", facebookPageUrl: "facebookPageUrl_example", tiktokProfileUrl: "tiktokProfileUrl_example", appStoreUrl: "appStoreUrl_example", googlePlayUrl: "googlePlayUrl_example", suggest: false) // UpdateProjectDraftRequest | 

// Submit a wizard step
ProjectsAPI.updateProjectDraft(id: id, updateProjectDraftRequest: updateProjectDraftRequest) { (response, error) in
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
 **id** | **String** |  | 
 **updateProjectDraftRequest** | [**UpdateProjectDraftRequest**](UpdateProjectDraftRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

