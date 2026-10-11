# AIAgentTrafficAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAgentTraffic**](AIAgentTrafficAPI.md#getagenttraffic) | **GET** /metrics/agent_traffic | AI bot crawler traffic (Scale plan or above, Beta)
[**getAiTraffic**](AIAgentTrafficAPI.md#getaitraffic) | **GET** /metrics/ai_traffic | AI referral traffic (Scale plan or above)
[**getWebAnalyticsSchema**](AIAgentTrafficAPI.md#getwebanalyticsschema) | **GET** /web_analytics/schema | Web analytics query format (Growth+)
[**listAgentBots**](AIAgentTrafficAPI.md#listagentbots) | **GET** /dimensions/agent_bots | AI bot catalog (Scale plan or above)
[**queryWebAnalytics**](AIAgentTrafficAPI.md#querywebanalytics) | **POST** /web_analytics/query | Live web analytics query (Growth+)


# **getAgentTraffic**
```swift
    open class func getAgentTraffic(projectId: Int, range: Int? = nil, from: Date? = nil, to: Date? = nil, bot: String? = nil, company: String? = nil, groupBy: GroupBy_getAgentTraffic? = nil, granularity: Granularity_getAgentTraffic? = nil, completion: @escaping (_ data: AgentTrafficResponse?, _ error: Error?) -> Void)
```

AI bot crawler traffic (Scale plan or above, Beta)

Aggregated AI bot traffic hitting the project's origin server (GPTBot, PerplexityBot, ClaudeBot, OAI-SearchBot, Google-Extended, etc.). Sourced from Cloudflare or CSV uploads. Requires the Scale plan; lower tiers receive ERR_PLAN_REQUIRED. A range below 1, or a window whose from is later than its to, returns ERR_INVALID_PARAM.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let range = 987 // Int | Number of days to look back (alternative to from/to) (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (optional)
let bot = "bot_example" // String | Filter by bot slug (e.g. gptbot, claudebot, perplexitybot) (optional)
let company = "company_example" // String | Filter by company (e.g. openai, anthropic, google) (optional)
let groupBy = "groupBy_example" // String |  (optional) (default to .bot)
let granularity = "granularity_example" // String |  (optional)

// AI bot crawler traffic (Scale plan or above, Beta)
AIAgentTrafficAPI.getAgentTraffic(projectId: projectId, range: range, from: from, to: to, bot: bot, company: company, groupBy: groupBy, granularity: granularity) { (response, error) in
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
 **range** | **Int** | Number of days to look back (alternative to from/to) | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **bot** | **String** | Filter by bot slug (e.g. gptbot, claudebot, perplexitybot) | [optional] 
 **company** | **String** | Filter by company (e.g. openai, anthropic, google) | [optional] 
 **groupBy** | **String** |  | [optional] [default to .bot]
 **granularity** | **String** |  | [optional] 

### Return type

[**AgentTrafficResponse**](AgentTrafficResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAiTraffic**
```swift
    open class func getAiTraffic(projectId: Int, range: Int? = nil, from: Date? = nil, to: Date? = nil, source: String? = nil, granularity: Granularity_getAiTraffic? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

AI referral traffic (Scale plan or above)

AI referral traffic for a project: human visits arriving from AI assistants (ChatGPT, Perplexity, Gemini, Claude, etc.), measured from the connected web analytics provider (Google Analytics 4, Adobe Analytics, PostHog, Plausible, Matomo or Piano). Returns per-source users, sessions and conversions with totals and a conversion rate. Requires a connected provider and the Scale plan; otherwise returns ERR_AI_TRAFFIC_NOT_CONNECTED or ERR_PLAN_REQUIRED. A range below 1, or a window whose from is later than its to, returns ERR_INVALID_PARAM.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let range = 987 // Int | Number of days to look back (alternative to from/to) (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. (optional)
let source = "source_example" // String | Filter by a single AI source slug (e.g. chatgpt, perplexity, gemini, claude) (optional)
let granularity = "granularity_example" // String |  (optional)

// AI referral traffic (Scale plan or above)
AIAgentTrafficAPI.getAiTraffic(projectId: projectId, range: range, from: from, to: to, source: source, granularity: granularity) { (response, error) in
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
 **range** | **Int** | Number of days to look back (alternative to from/to) | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** | End of the window. A date-only value such as 2026-09-01 covers that whole day. Pass a full timestamp to end the window earlier. | [optional] 
 **source** | **String** | Filter by a single AI source slug (e.g. chatgpt, perplexity, gemini, claude) | [optional] 
 **granularity** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWebAnalyticsSchema**
```swift
    open class func getWebAnalyticsSchema(projectId: Int, completion: @escaping (_ data: WebAnalyticsSchemaResponse?, _ error: Error?) -> Void)
```

Web analytics query format (Growth+)

How to query the web analytics provider connected to the project, live: the provider, the property every query runs on, the native query format it accepts, the allowed top-level fields, the rules the bridge enforces (the connected property is always used, only reads run, row limits), a worked example and, where the provider offers it, its live field list. Cached for an hour. Supported providers: Google Analytics 4, Adobe Analytics or Customer Journey Analytics, Matomo, PostHog, Plausible and Piano, connected on the AI Traffic page. Requires the Growth plan or above; otherwise ERR_PLAN_REQUIRED. Without a connected provider returns ERR_WEB_ANALYTICS_NOT_CONNECTED (404); a provider that refuses the stored credentials returns ERR_WEB_ANALYTICS_ACCESS_REVOKED (403); an unavailable provider, an exhausted provider quota, more than 20 uncached queries a minute or too many running at once for the project returns ERR_WEB_ANALYTICS_UPSTREAM (503): wait for the number of seconds in Retry-After before retrying.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID

// Web analytics query format (Growth+)
AIAgentTrafficAPI.getWebAnalyticsSchema(projectId: projectId) { (response, error) in
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

[**WebAnalyticsSchemaResponse**](WebAnalyticsSchemaResponse.md)

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

AI bot catalog (Scale plan or above)

Static catalog of AI bots that Agent Analytics can identify. Useful for rendering filter UIs that mirror our internal classification (slug, display name, company, category, Cloudflare verified-bot mapping, description). Requires the Scale plan; lower tiers receive ERR_PLAN_REQUIRED. The equivalent MCP tool list_agent_bots is available on the Scale plan or above.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// AI bot catalog (Scale plan or above)
AIAgentTrafficAPI.listAgentBots(projectId: projectId, output: output) { (response, error) in
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

# **queryWebAnalytics**
```swift
    open class func queryWebAnalytics(queryWebAnalyticsRequest: QueryWebAnalyticsRequest, completion: @escaping (_ data: WebAnalyticsQueryResponse?, _ error: Error?) -> Void)
```

Live web analytics query (Growth+)

Runs a read-only query, written in the connected provider's native format, against the project's property and returns columns and rows: a GA4 Data API runReport body, an Adobe Analytics or Customer Journey Analytics report request, Matomo Reporting API parameters (get methods only), PostHog HogQL, a Plausible Stats API v2 query or a Piano getData body. The connected property, site, report suite or project is always used and any property field in the query is ignored. Rows default to 100 and are capped at 5,000. Identical queries are answered from a 10-minute cache (cached: true). A query the provider rejects returns ERR_WEB_ANALYTICS_INVALID_QUERY (422) with the provider's own validation message. Each uncached query spends the customer's provider API quota. A read: no writable key is needed. Supported providers: Google Analytics 4, Adobe Analytics or Customer Journey Analytics, Matomo, PostHog, Plausible and Piano, connected on the AI Traffic page. Requires the Growth plan or above; otherwise ERR_PLAN_REQUIRED. Without a connected provider returns ERR_WEB_ANALYTICS_NOT_CONNECTED (404); a provider that refuses the stored credentials returns ERR_WEB_ANALYTICS_ACCESS_REVOKED (403); an unavailable provider, an exhausted provider quota, more than 20 uncached queries a minute or too many running at once for the project returns ERR_WEB_ANALYTICS_UPSTREAM (503): wait for the number of seconds in Retry-After before retrying.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let queryWebAnalyticsRequest = queryWebAnalytics_request(projectId: 123, query: 123) // QueryWebAnalyticsRequest | 

// Live web analytics query (Growth+)
AIAgentTrafficAPI.queryWebAnalytics(queryWebAnalyticsRequest: queryWebAnalyticsRequest) { (response, error) in
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
 **queryWebAnalyticsRequest** | [**QueryWebAnalyticsRequest**](QueryWebAnalyticsRequest.md) |  | 

### Return type

[**WebAnalyticsQueryResponse**](WebAnalyticsQueryResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

