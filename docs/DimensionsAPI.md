# DimensionsAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCompetitorDetails**](DimensionsAPI.md#getcompetitordetails) | **GET** /dimensions/competitors/{id} | Competitor details
[**getProjectDetails**](DimensionsAPI.md#getprojectdetails) | **GET** /dimensions/projects/{id} | Project details
[**listAgentBots**](DimensionsAPI.md#listagentbots) | **GET** /dimensions/agent_bots | AI bot catalog (Scale+)
[**listAllCitations**](DimensionsAPI.md#listallcitations) | **GET** /dimensions/all_citations | List all citations (brand + competitor)
[**listAllMentions**](DimensionsAPI.md#listallmentions) | **GET** /dimensions/all_mentions | List all mentions (brand + competitor)
[**listCitations**](DimensionsAPI.md#listcitations) | **GET** /dimensions/citations | List brand citations
[**listCollections**](DimensionsAPI.md#listcollections) | **GET** /dimensions/collections | List tags/collections
[**listCompetitorCitations**](DimensionsAPI.md#listcompetitorcitations) | **GET** /dimensions/competitor_citations | List competitor citations
[**listCompetitorMentions**](DimensionsAPI.md#listcompetitormentions) | **GET** /dimensions/competitor_mentions | List competitor mentions
[**listCompetitors**](DimensionsAPI.md#listcompetitors) | **GET** /dimensions/competitors | List competitors
[**listLocales**](DimensionsAPI.md#listlocales) | **GET** /dimensions/locales | List locales with data
[**listMentions**](DimensionsAPI.md#listmentions) | **GET** /dimensions/mentions | List brand mentions
[**listModels**](DimensionsAPI.md#listmodels) | **GET** /dimensions/models | List models with data
[**listProjects**](DimensionsAPI.md#listprojects) | **GET** /dimensions/projects | List projects
[**listPromptExecutions**](DimensionsAPI.md#listpromptexecutions) | **GET** /dimensions/prompt_executions | List prompt executions
[**listPrompts**](DimensionsAPI.md#listprompts) | **GET** /dimensions/prompts | List prompts
[**listSentimentCategories**](DimensionsAPI.md#listsentimentcategories) | **GET** /dimensions/sentiments | List sentiment categories
[**listSources**](DimensionsAPI.md#listsources) | **GET** /dimensions/sources | List source URLs
[**listTags**](DimensionsAPI.md#listtags) | **GET** /dimensions/tags | List tags (alias for /collections)


# **getCompetitorDetails**
```swift
    open class func getCompetitorDetails(projectId: Int, id: Int, completion: @escaping (_ data: CompetitorDetails?, _ error: Error?) -> Void)
```

Competitor details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let id = 987 // Int | 

// Competitor details
DimensionsAPI.getCompetitorDetails(projectId: projectId, id: id) { (response, error) in
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
 **id** | **Int** |  | 

### Return type

[**CompetitorDetails**](CompetitorDetails.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
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
DimensionsAPI.getProjectDetails(id: id) { (response, error) in
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

# **listAgentBots**
```swift
    open class func listAgentBots(projectId: Int, output: Output_listAgentBots? = nil, completion: @escaping (_ data: AgentBotsResponse?, _ error: Error?) -> Void)
```

AI bot catalog (Scale+)

Static catalog of AI bots that Agent Analytics can identify. Useful for rendering filter UIs that mirror our internal classification (slug, display name, company, category, Cloudflare verified-bot mapping, description). Requires the Scale plan; lower tiers receive ERR_PLAN_REQUIRED. The equivalent MCP tool list_agent_bots is available on all plans.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// AI bot catalog (Scale+)
DimensionsAPI.listAgentBots(projectId: projectId, output: output) { (response, error) in
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
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**AgentBotsResponse**](AgentBotsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAllCitations**
```swift
    open class func listAllCitations(projectId: Int, competitors: String? = nil, page: Int? = nil, perPage: Int? = nil, model: Model_listAllCitations? = nil, collectionId: Int? = nil, prompt: Int? = nil, from: Date? = nil, to: Date? = nil, output: Output_listAllCitations? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List all citations (brand + competitor)

Unified citations stream with an `actor_type` field on each record. Includes visible citations and background source references; background references use position 0, meaning no visible rank.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let competitors = "competitors_example" // String | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) (optional)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let model = "model_example" // String | Filter by AI model. Models the API key's user has not enabled are silently dropped. (optional)
let collectionId = 987 // Int |  (optional)
let prompt = 987 // Int | Filter by prompt ID (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// List all citations (brand + competitor)
DimensionsAPI.listAllCitations(projectId: projectId, competitors: competitors, page: page, perPage: perPage, model: model, collectionId: collectionId, prompt: prompt, from: from, to: to, output: output) { (response, error) in
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
 **competitors** | **String** | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) | [optional] 
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]
 **model** | **String** | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collectionId** | **Int** |  | [optional] 
 **prompt** | **Int** | Filter by prompt ID | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** |  | [optional] 
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAllMentions**
```swift
    open class func listAllMentions(projectId: Int, competitors: String? = nil, page: Int? = nil, perPage: Int? = nil, model: Model_listAllMentions? = nil, collectionId: Int? = nil, prompt: Int? = nil, from: Date? = nil, to: Date? = nil, output: Output_listAllMentions? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List all mentions (brand + competitor)

Unified mentions stream. Each record has an `actor_type` field (`project` or `competitor`) so the same payload covers both.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let competitors = "competitors_example" // String | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) (optional)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let model = "model_example" // String | Filter by AI model. Models the API key's user has not enabled are silently dropped. (optional)
let collectionId = 987 // Int |  (optional)
let prompt = 987 // Int | Filter by prompt ID (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// List all mentions (brand + competitor)
DimensionsAPI.listAllMentions(projectId: projectId, competitors: competitors, page: page, perPage: perPage, model: model, collectionId: collectionId, prompt: prompt, from: from, to: to, output: output) { (response, error) in
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
 **competitors** | **String** | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) | [optional] 
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]
 **model** | **String** | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collectionId** | **Int** |  | [optional] 
 **prompt** | **Int** | Filter by prompt ID | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** |  | [optional] 
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCitations**
```swift
    open class func listCitations(projectId: Int, page: Int? = nil, perPage: Int? = nil, model: Model_listCitations? = nil, collectionId: Int? = nil, countryCode: String? = nil, languageCode: String? = nil, prompt: Int? = nil, from: Date? = nil, to: Date? = nil, output: Output_listCitations? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List brand citations

Includes visible citations and background source references. Background references use position 0, meaning no visible rank.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let model = "model_example" // String | Filter by AI model. Models the API key's user has not enabled are silently dropped. (optional)
let collectionId = 987 // Int |  (optional)
let countryCode = "countryCode_example" // String | ISO country code (e.g. US, GB, DE) (optional)
let languageCode = "languageCode_example" // String | ISO language code (e.g. en, es, de) (optional)
let prompt = 987 // Int | Filter by prompt ID (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// List brand citations
DimensionsAPI.listCitations(projectId: projectId, page: page, perPage: perPage, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, prompt: prompt, from: from, to: to, output: output) { (response, error) in
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
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]
 **model** | **String** | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collectionId** | **Int** |  | [optional] 
 **countryCode** | **String** | ISO country code (e.g. US, GB, DE) | [optional] 
 **languageCode** | **String** | ISO language code (e.g. en, es, de) | [optional] 
 **prompt** | **Int** | Filter by prompt ID | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** |  | [optional] 
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCollections**
```swift
    open class func listCollections(projectId: Int, output: Output_listCollections? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List tags/collections

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// List tags/collections
DimensionsAPI.listCollections(projectId: projectId, output: output) { (response, error) in
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
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCompetitorCitations**
```swift
    open class func listCompetitorCitations(projectId: Int, competitors: String? = nil, page: Int? = nil, perPage: Int? = nil, model: Model_listCompetitorCitations? = nil, collectionId: Int? = nil, prompt: Int? = nil, from: Date? = nil, to: Date? = nil, output: Output_listCompetitorCitations? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List competitor citations

Includes visible citations and background source references. Background references use position 0, meaning no visible rank.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let competitors = "competitors_example" // String | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) (optional)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let model = "model_example" // String | Filter by AI model. Models the API key's user has not enabled are silently dropped. (optional)
let collectionId = 987 // Int |  (optional)
let prompt = 987 // Int | Filter by prompt ID (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// List competitor citations
DimensionsAPI.listCompetitorCitations(projectId: projectId, competitors: competitors, page: page, perPage: perPage, model: model, collectionId: collectionId, prompt: prompt, from: from, to: to, output: output) { (response, error) in
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
 **competitors** | **String** | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) | [optional] 
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]
 **model** | **String** | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collectionId** | **Int** |  | [optional] 
 **prompt** | **Int** | Filter by prompt ID | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** |  | [optional] 
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCompetitorMentions**
```swift
    open class func listCompetitorMentions(projectId: Int, competitors: String? = nil, page: Int? = nil, perPage: Int? = nil, model: Model_listCompetitorMentions? = nil, collectionId: Int? = nil, prompt: Int? = nil, from: Date? = nil, to: Date? = nil, output: Output_listCompetitorMentions? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List competitor mentions

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let competitors = "competitors_example" // String | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) (optional)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let model = "model_example" // String | Filter by AI model. Models the API key's user has not enabled are silently dropped. (optional)
let collectionId = 987 // Int |  (optional)
let prompt = 987 // Int | Filter by prompt ID (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// List competitor mentions
DimensionsAPI.listCompetitorMentions(projectId: projectId, competitors: competitors, page: page, perPage: perPage, model: model, collectionId: collectionId, prompt: prompt, from: from, to: to, output: output) { (response, error) in
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
 **competitors** | **String** | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) | [optional] 
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]
 **model** | **String** | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collectionId** | **Int** |  | [optional] 
 **prompt** | **Int** | Filter by prompt ID | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** |  | [optional] 
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCompetitors**
```swift
    open class func listCompetitors(projectId: Int, includeProjectBrand: Bool? = nil, output: Output_listCompetitors? = nil, completion: @escaping (_ data: ListCompetitors200Response?, _ error: Error?) -> Void)
```

List competitors

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let includeProjectBrand = true // Bool | When true, prepends the project brand with actor_type=project and is_own=true (optional) (default to false)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// List competitors
DimensionsAPI.listCompetitors(projectId: projectId, includeProjectBrand: includeProjectBrand, output: output) { (response, error) in
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
 **includeProjectBrand** | **Bool** | When true, prepends the project brand with actor_type&#x3D;project and is_own&#x3D;true | [optional] [default to false]
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**ListCompetitors200Response**](ListCompetitors200Response.md)

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
DimensionsAPI.listLocales(projectId: projectId) { (response, error) in
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

# **listMentions**
```swift
    open class func listMentions(projectId: Int, page: Int? = nil, perPage: Int? = nil, model: Model_listMentions? = nil, collectionId: Int? = nil, countryCode: String? = nil, languageCode: String? = nil, prompt: Int? = nil, from: Date? = nil, to: Date? = nil, output: Output_listMentions? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List brand mentions

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let model = "model_example" // String | Filter by AI model. Models the API key's user has not enabled are silently dropped. (optional)
let collectionId = 987 // Int |  (optional)
let countryCode = "countryCode_example" // String | ISO country code (e.g. US, GB, DE) (optional)
let languageCode = "languageCode_example" // String | ISO language code (e.g. en, es, de) (optional)
let prompt = 987 // Int | Filter by prompt ID (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// List brand mentions
DimensionsAPI.listMentions(projectId: projectId, page: page, perPage: perPage, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, prompt: prompt, from: from, to: to, output: output) { (response, error) in
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
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]
 **model** | **String** | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collectionId** | **Int** |  | [optional] 
 **countryCode** | **String** | ISO country code (e.g. US, GB, DE) | [optional] 
 **languageCode** | **String** | ISO language code (e.g. en, es, de) | [optional] 
 **prompt** | **Int** | Filter by prompt ID | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** |  | [optional] 
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

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
DimensionsAPI.listModels(projectId: projectId) { (response, error) in
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
DimensionsAPI.listProjects(output: output) { (response, error) in
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

# **listPromptExecutions**
```swift
    open class func listPromptExecutions(projectId: Int, page: Int? = nil, perPage: Int? = nil, model: Model_listPromptExecutions? = nil, collectionId: Int? = nil, countryCode: String? = nil, languageCode: String? = nil, prompt: Int? = nil, from: Date? = nil, to: Date? = nil, mentionFilter: MentionFilter_listPromptExecutions? = nil, citationFilter: CitationFilter_listPromptExecutions? = nil, competitors: String? = nil, output: Output_listPromptExecutions? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List prompt executions

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let model = "model_example" // String | Filter by AI model. Models the API key's user has not enabled are silently dropped. (optional)
let collectionId = 987 // Int |  (optional)
let countryCode = "countryCode_example" // String | ISO country code (e.g. US, GB, DE) (optional)
let languageCode = "languageCode_example" // String | ISO language code (e.g. en, es, de) (optional)
let prompt = 987 // Int | Filter by prompt ID (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)
let mentionFilter = "mentionFilter_example" // String | Filter by which brands are mentioned, as a two-axis matrix (your brand x competitors): mentions_you / not_mentions_you, mentions_competitor / not_mentions_competitor, and the four combined cells you_and_competitor, competitor_not_you (a rival wins and you are absent), you_not_competitor, no_brands (no tracked brand appears, i.e. open space). Combine with 'competitors' to narrow the competitor side to specific rivals; on a negative cell that reads 'none of these'. On /dimensions/sources it applies to the crawled content of each cited page instead of the answer text. The legacy value 'competitors_only' is still accepted as an alias of competitor_not_you. (optional)
let citationFilter = "citationFilter_example" // String | Same two-axis matrix applied to the domains cited in the answer instead of the brands named in it. Independent of mention_filter; pass both to intersect them (e.g. mentions_you + not_cites_you finds answers that talk about you without linking to you). (optional)
let competitors = "competitors_example" // String | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) (optional)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// List prompt executions
DimensionsAPI.listPromptExecutions(projectId: projectId, page: page, perPage: perPage, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, prompt: prompt, from: from, to: to, mentionFilter: mentionFilter, citationFilter: citationFilter, competitors: competitors, output: output) { (response, error) in
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
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]
 **model** | **String** | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collectionId** | **Int** |  | [optional] 
 **countryCode** | **String** | ISO country code (e.g. US, GB, DE) | [optional] 
 **languageCode** | **String** | ISO language code (e.g. en, es, de) | [optional] 
 **prompt** | **Int** | Filter by prompt ID | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** |  | [optional] 
 **mentionFilter** | **String** | Filter by which brands are mentioned, as a two-axis matrix (your brand x competitors): mentions_you / not_mentions_you, mentions_competitor / not_mentions_competitor, and the four combined cells you_and_competitor, competitor_not_you (a rival wins and you are absent), you_not_competitor, no_brands (no tracked brand appears, i.e. open space). Combine with &#39;competitors&#39; to narrow the competitor side to specific rivals; on a negative cell that reads &#39;none of these&#39;. On /dimensions/sources it applies to the crawled content of each cited page instead of the answer text. The legacy value &#39;competitors_only&#39; is still accepted as an alias of competitor_not_you. | [optional] 
 **citationFilter** | **String** | Same two-axis matrix applied to the domains cited in the answer instead of the brands named in it. Independent of mention_filter; pass both to intersect them (e.g. mentions_you + not_cites_you finds answers that talk about you without linking to you). | [optional] 
 **competitors** | **String** | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) | [optional] 
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPrompts**
```swift
    open class func listPrompts(projectId: Int, page: Int? = nil, perPage: Int? = nil, model: Model_listPrompts? = nil, collectionId: Int? = nil, countryCode: String? = nil, languageCode: String? = nil, promptType: PromptType_listPrompts? = nil, brandKind: BrandKind_listPrompts? = nil, from: Date? = nil, to: Date? = nil, output: Output_listPrompts? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List prompts

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let model = "model_example" // String | Filter by AI model. Models the API key's user has not enabled are silently dropped. (optional)
let collectionId = 987 // Int |  (optional)
let countryCode = "countryCode_example" // String | ISO country code (e.g. US, GB, DE) (optional)
let languageCode = "languageCode_example" // String | ISO language code (e.g. en, es, de) (optional)
let promptType = "promptType_example" // String | Filter by prompt type (search intent) (optional)
let brandKind = "brandKind_example" // String | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// List prompts
DimensionsAPI.listPrompts(projectId: projectId, page: page, perPage: perPage, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, promptType: promptType, brandKind: brandKind, from: from, to: to, output: output) { (response, error) in
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
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]
 **model** | **String** | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collectionId** | **Int** |  | [optional] 
 **countryCode** | **String** | ISO country code (e.g. US, GB, DE) | [optional] 
 **languageCode** | **String** | ISO language code (e.g. en, es, de) | [optional] 
 **promptType** | **String** | Filter by prompt type (search intent) | [optional] 
 **brandKind** | **String** | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** |  | [optional] 
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSentimentCategories**
```swift
    open class func listSentimentCategories(projectId: Int, output: Output_listSentimentCategories? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List sentiment categories

Sentiment metric keys + labels + colors. For records, use /sentiments.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// List sentiment categories
DimensionsAPI.listSentimentCategories(projectId: projectId, output: output) { (response, error) in
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
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSources**
```swift
    open class func listSources(projectId: Int, page: Int? = nil, perPage: Int? = nil, model: Model_listSources? = nil, collectionId: Int? = nil, countryCode: String? = nil, languageCode: String? = nil, prompt: Int? = nil, from: Date? = nil, to: Date? = nil, sourceType: SourceType_listSources? = nil, mentionFilter: MentionFilter_listSources? = nil, competitors: String? = nil, output: Output_listSources? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List source URLs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let model = "model_example" // String | Filter by AI model. Models the API key's user has not enabled are silently dropped. (optional)
let collectionId = 987 // Int |  (optional)
let countryCode = "countryCode_example" // String | ISO country code (e.g. US, GB, DE) (optional)
let languageCode = "languageCode_example" // String | ISO language code (e.g. en, es, de) (optional)
let prompt = 987 // Int | Filter by prompt ID (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)
let sourceType = "sourceType_example" // String | Filter by source ownership. Owned and competitor matching honor the project's exact-subdomain setting. (optional)
let mentionFilter = "mentionFilter_example" // String | Filter by which brands are mentioned, as a two-axis matrix (your brand x competitors): mentions_you / not_mentions_you, mentions_competitor / not_mentions_competitor, and the four combined cells you_and_competitor, competitor_not_you (a rival wins and you are absent), you_not_competitor, no_brands (no tracked brand appears, i.e. open space). Combine with 'competitors' to narrow the competitor side to specific rivals; on a negative cell that reads 'none of these'. On /dimensions/sources it applies to the crawled content of each cited page instead of the answer text. The legacy value 'competitors_only' is still accepted as an alias of competitor_not_you. (optional)
let competitors = "competitors_example" // String | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) (optional)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// List source URLs
DimensionsAPI.listSources(projectId: projectId, page: page, perPage: perPage, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, prompt: prompt, from: from, to: to, sourceType: sourceType, mentionFilter: mentionFilter, competitors: competitors, output: output) { (response, error) in
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
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]
 **model** | **String** | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collectionId** | **Int** |  | [optional] 
 **countryCode** | **String** | ISO country code (e.g. US, GB, DE) | [optional] 
 **languageCode** | **String** | ISO language code (e.g. en, es, de) | [optional] 
 **prompt** | **Int** | Filter by prompt ID | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** |  | [optional] 
 **sourceType** | **String** | Filter by source ownership. Owned and competitor matching honor the project&#39;s exact-subdomain setting. | [optional] 
 **mentionFilter** | **String** | Filter by which brands are mentioned, as a two-axis matrix (your brand x competitors): mentions_you / not_mentions_you, mentions_competitor / not_mentions_competitor, and the four combined cells you_and_competitor, competitor_not_you (a rival wins and you are absent), you_not_competitor, no_brands (no tracked brand appears, i.e. open space). Combine with &#39;competitors&#39; to narrow the competitor side to specific rivals; on a negative cell that reads &#39;none of these&#39;. On /dimensions/sources it applies to the crawled content of each cited page instead of the answer text. The legacy value &#39;competitors_only&#39; is still accepted as an alias of competitor_not_you. | [optional] 
 **competitors** | **String** | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) | [optional] 
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTags**
```swift
    open class func listTags(projectId: Int, output: Output_listTags? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

List tags (alias for /collections)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// List tags (alias for /collections)
DimensionsAPI.listTags(projectId: projectId, output: output) { (response, error) in
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
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

