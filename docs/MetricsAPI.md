# MetricsAPI

All URIs are relative to *https://api.llmpulse.ai/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAgentTraffic**](MetricsAPI.md#getagenttraffic) | **GET** /metrics/agent_traffic | AI bot crawler traffic (Scale+, Beta)
[**getAiTraffic**](MetricsAPI.md#getaitraffic) | **GET** /metrics/ai_traffic | AI referral traffic (Scale+)
[**getPromptSummary**](MetricsAPI.md#getpromptsummary) | **GET** /metrics/prompt_summary | Per-prompt metrics summary
[**getShareOfVoice**](MetricsAPI.md#getshareofvoice) | **GET** /metrics/sov | Share of Voice
[**getSummary**](MetricsAPI.md#getsummary) | **GET** /metrics/summary | Aggregated metrics summary
[**getTimeseries**](MetricsAPI.md#gettimeseries) | **GET** /metrics/timeseries | Time-series metrics
[**getTopSources**](MetricsAPI.md#gettopsources) | **GET** /metrics/top_sources | Top cited sources


# **getAgentTraffic**
```swift
    open class func getAgentTraffic(projectId: Int, range: Int? = nil, from: Date? = nil, to: Date? = nil, bot: String? = nil, company: String? = nil, groupBy: GroupBy_getAgentTraffic? = nil, granularity: Granularity_getAgentTraffic? = nil, completion: @escaping (_ data: AgentTrafficResponse?, _ error: Error?) -> Void)
```

AI bot crawler traffic (Scale+, Beta)

Aggregated AI bot traffic hitting the project's origin server (GPTBot, PerplexityBot, ClaudeBot, OAI-SearchBot, Google-Extended, etc.). Sourced from Cloudflare or CSV uploads. Requires the Scale plan; lower tiers receive ERR_PLAN_REQUIRED.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let range = 987 // Int | Number of days to look back (alternative to from/to) (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)
let bot = "bot_example" // String | Filter by bot slug (e.g. gptbot, claudebot, perplexitybot) (optional)
let company = "company_example" // String | Filter by company (e.g. openai, anthropic, google) (optional)
let groupBy = "groupBy_example" // String |  (optional) (default to .bot)
let granularity = "granularity_example" // String |  (optional)

// AI bot crawler traffic (Scale+, Beta)
MetricsAPI.getAgentTraffic(projectId: projectId, range: range, from: from, to: to, bot: bot, company: company, groupBy: groupBy, granularity: granularity) { (response, error) in
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
 **to** | **Date** |  | [optional] 
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

AI referral traffic (Scale+)

AI referral traffic for a project: human visits arriving from AI assistants (ChatGPT, Perplexity, Gemini, Claude, etc.), measured from the connected web analytics provider (Google Analytics 4, Adobe Analytics, PostHog, Plausible or Piano). Returns per-source users, sessions and conversions with totals and a conversion rate. Requires a connected provider and the Scale plan; otherwise returns ERR_AI_TRAFFIC_NOT_CONNECTED or ERR_PLAN_REQUIRED.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let range = 987 // Int | Number of days to look back (alternative to from/to) (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)
let source = "source_example" // String | Filter by a single AI source slug (e.g. chatgpt, perplexity, gemini, claude) (optional)
let granularity = "granularity_example" // String |  (optional)

// AI referral traffic (Scale+)
MetricsAPI.getAiTraffic(projectId: projectId, range: range, from: from, to: to, source: source, granularity: granularity) { (response, error) in
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
 **to** | **Date** |  | [optional] 
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

# **getPromptSummary**
```swift
    open class func getPromptSummary(projectId: Int, range: Int? = nil, from: Date? = nil, to: Date? = nil, breakdown: Breakdown_getPromptSummary? = nil, model: Model_getPromptSummary? = nil, collectionId: Int? = nil, countryCode: String? = nil, languageCode: String? = nil, prompt: Int? = nil, promptType: PromptType_getPromptSummary? = nil, brandKind: BrandKind_getPromptSummary? = nil, sort: Sort_getPromptSummary? = nil, sortDir: SortDir_getPromptSummary? = nil, page: Int? = nil, perPage: Int? = nil, output: Output_getPromptSummary? = nil, completion: @escaping (_ data: PromptSummaryResponse?, _ error: Error?) -> Void)
```

Per-prompt metrics summary

Paginated per-prompt aggregated metrics. Returns responses, mentions, citations, mention_rate, citation_rate, avg_mention_position and avg_position per prompt. Citations and citation rate include visible citations and background source references; avg_position uses visible citations only. Pass `breakdown=model` to split each prompt by model.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let range = 987 // Int | Number of days to look back (alternative to from/to) (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)
let breakdown = "breakdown_example" // String | Add per-(prompt, model) rows to the output (optional)
let model = "model_example" // String | Filter by AI model. Models the API key's user has not enabled are silently dropped. (optional)
let collectionId = 987 // Int |  (optional)
let countryCode = "countryCode_example" // String | ISO country code (e.g. US, GB, DE) (optional)
let languageCode = "languageCode_example" // String | ISO language code (e.g. en, es, de) (optional)
let prompt = 987 // Int | Filter by prompt ID (optional)
let promptType = "promptType_example" // String | Filter by prompt type (search intent) (optional)
let brandKind = "brandKind_example" // String | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (optional)
let sort = "sort_example" // String |  (optional) (default to .responses)
let sortDir = "sortDir_example" // String |  (optional) (default to .desc)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// Per-prompt metrics summary
MetricsAPI.getPromptSummary(projectId: projectId, range: range, from: from, to: to, breakdown: breakdown, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, prompt: prompt, promptType: promptType, brandKind: brandKind, sort: sort, sortDir: sortDir, page: page, perPage: perPage, output: output) { (response, error) in
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
 **to** | **Date** |  | [optional] 
 **breakdown** | **String** | Add per-(prompt, model) rows to the output | [optional] 
 **model** | **String** | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collectionId** | **Int** |  | [optional] 
 **countryCode** | **String** | ISO country code (e.g. US, GB, DE) | [optional] 
 **languageCode** | **String** | ISO language code (e.g. en, es, de) | [optional] 
 **prompt** | **Int** | Filter by prompt ID | [optional] 
 **promptType** | **String** | Filter by prompt type (search intent) | [optional] 
 **brandKind** | **String** | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **sort** | **String** |  | [optional] [default to .responses]
 **sortDir** | **String** |  | [optional] [default to .desc]
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**PromptSummaryResponse**](PromptSummaryResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShareOfVoice**
```swift
    open class func getShareOfVoice(projectId: Int, range: Int? = nil, from: Date? = nil, to: Date? = nil, granularity: Granularity_getShareOfVoice? = nil, competitors: String? = nil, model: Model_getShareOfVoice? = nil, collectionId: Int? = nil, prompt: Int? = nil, promptType: PromptType_getShareOfVoice? = nil, brandKind: BrandKind_getShareOfVoice? = nil, output: Output_getShareOfVoice? = nil, view: View_getShareOfVoice? = nil, completion: @escaping (_ data: SovResponse?, _ error: Error?) -> Void)
```

Share of Voice

Share of Voice breakdown comparing your project to competitors. Returns over_time, current snapshot, and a Top-4 + Others breakdown.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let range = 987 // Int | Number of days to look back (alternative to from/to) (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)
let granularity = "granularity_example" // String |  (optional)
let competitors = "competitors_example" // String | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) (optional)
let model = "model_example" // String | Filter by AI model. Models the API key's user has not enabled are silently dropped. (optional)
let collectionId = 987 // Int |  (optional)
let prompt = 987 // Int | Filter by prompt ID (optional)
let promptType = "promptType_example" // String | Filter by prompt type (search intent) (optional)
let brandKind = "brandKind_example" // String | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (optional)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)
let view = "view_example" // String | Which Share of Voice projection to flatten. Only valid together with 'output'. 'over_time' (default) is one row per date and actor, 'current' the ranked snapshot, 'breakdown' the Top 4 plus Others. (optional) (default to .overTime)

// Share of Voice
MetricsAPI.getShareOfVoice(projectId: projectId, range: range, from: from, to: to, granularity: granularity, competitors: competitors, model: model, collectionId: collectionId, prompt: prompt, promptType: promptType, brandKind: brandKind, output: output, view: view) { (response, error) in
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
 **to** | **Date** |  | [optional] 
 **granularity** | **String** |  | [optional] 
 **competitors** | **String** | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) | [optional] 
 **model** | **String** | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collectionId** | **Int** |  | [optional] 
 **prompt** | **Int** | Filter by prompt ID | [optional] 
 **promptType** | **String** | Filter by prompt type (search intent) | [optional] 
 **brandKind** | **String** | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 
 **view** | **String** | Which Share of Voice projection to flatten. Only valid together with &#39;output&#39;. &#39;over_time&#39; (default) is one row per date and actor, &#39;current&#39; the ranked snapshot, &#39;breakdown&#39; the Top 4 plus Others. | [optional] [default to .overTime]

### Return type

[**SovResponse**](SovResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSummary**
```swift
    open class func getSummary(projectId: Int, metrics: String? = nil, granularity: Granularity_getSummary? = nil, range: Int? = nil, from: Date? = nil, to: Date? = nil, competitors: String? = nil, model: Model_getSummary? = nil, collectionId: Int? = nil, prompt: Int? = nil, promptType: PromptType_getSummary? = nil, brandKind: BrandKind_getSummary? = nil, output: Output_getSummary? = nil, completion: @escaping (_ data: SummaryResponse?, _ error: Error?) -> Void)
```

Aggregated metrics summary

Same as /metrics/timeseries but adds a `summary` block with total/min/max/last per metric per actor, plus a `position_distribution` block (Position 1, Position 2, Position 3+). Citations and citation rate include visible citations and background source references. Background references use position 0 and are excluded from avg_position and position distributions. `total` is a SUM for count metrics (mentions, citations, responses) and an AVERAGE across periods for rate/percentage and average metrics (visibility/mention_rate, citation_rate, ai_visibility_score, sentiment shares, avg_position, avg_mention_position, net_sentiment); rates are never summed. Each summary row carries an `aggregation` field (`sum` or `average`).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let metrics = "metrics_example" // String | Comma-separated list of metrics: mentions, citations, responses, mention_rate, visibility (alias for mention_rate), weighted_visibility, ai_visibility_score (alias for weighted_visibility), citation_rate, avg_position, avg_mention_position, net_sentiment, sentiment_very_positive, sentiment_positive, sentiment_neutral, sentiment_negative, sentiment_very_negative. Citations and citation_rate include visible citations and background source references; avg_position uses visible citations only. (optional)
let granularity = "granularity_example" // String |  (optional)
let range = 987 // Int | Number of days to look back (alternative to from/to) (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)
let competitors = "competitors_example" // String | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) (optional)
let model = "model_example" // String | Filter by AI model. Models the API key's user has not enabled are silently dropped. (optional)
let collectionId = 987 // Int |  (optional)
let prompt = 987 // Int | Filter by prompt ID (optional)
let promptType = "promptType_example" // String | Filter by prompt type (search intent) (optional)
let brandKind = "brandKind_example" // String | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (optional)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// Aggregated metrics summary
MetricsAPI.getSummary(projectId: projectId, metrics: metrics, granularity: granularity, range: range, from: from, to: to, competitors: competitors, model: model, collectionId: collectionId, prompt: prompt, promptType: promptType, brandKind: brandKind, output: output) { (response, error) in
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
 **metrics** | **String** | Comma-separated list of metrics: mentions, citations, responses, mention_rate, visibility (alias for mention_rate), weighted_visibility, ai_visibility_score (alias for weighted_visibility), citation_rate, avg_position, avg_mention_position, net_sentiment, sentiment_very_positive, sentiment_positive, sentiment_neutral, sentiment_negative, sentiment_very_negative. Citations and citation_rate include visible citations and background source references; avg_position uses visible citations only. | [optional] 
 **granularity** | **String** |  | [optional] 
 **range** | **Int** | Number of days to look back (alternative to from/to) | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** |  | [optional] 
 **competitors** | **String** | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) | [optional] 
 **model** | **String** | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collectionId** | **Int** |  | [optional] 
 **prompt** | **Int** | Filter by prompt ID | [optional] 
 **promptType** | **String** | Filter by prompt type (search intent) | [optional] 
 **brandKind** | **String** | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**SummaryResponse**](SummaryResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTimeseries**
```swift
    open class func getTimeseries(projectId: Int, metrics: String? = nil, granularity: Granularity_getTimeseries? = nil, range: Int? = nil, from: Date? = nil, to: Date? = nil, competitors: String? = nil, model: Model_getTimeseries? = nil, collectionId: Int? = nil, countryCode: String? = nil, languageCode: String? = nil, prompt: Int? = nil, promptType: PromptType_getTimeseries? = nil, brandKind: BrandKind_getTimeseries? = nil, includeProject: Bool? = nil, output: Output_getTimeseries? = nil, completion: @escaping (_ data: TimeseriesResponse?, _ error: Error?) -> Void)
```

Time-series metrics

Returns time-series data for one or more metrics, broken down by actor (project + competitors). Supports day/week/month granularity, with sticky carry-forward semantics for week/month aggregates.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let metrics = "metrics_example" // String | Comma-separated list of metrics: mentions, citations, responses, mention_rate, visibility (alias for mention_rate), weighted_visibility, ai_visibility_score (alias for weighted_visibility), citation_rate, avg_position, avg_mention_position, net_sentiment, sentiment_very_positive, sentiment_positive, sentiment_neutral, sentiment_negative, sentiment_very_negative. Citations and citation_rate include visible citations and background source references; avg_position uses visible citations only. (optional)
let granularity = "granularity_example" // String |  (optional)
let range = 987 // Int | Number of days to look back (alternative to from/to) (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)
let competitors = "competitors_example" // String | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) (optional)
let model = "model_example" // String | Filter by AI model. Models the API key's user has not enabled are silently dropped. (optional)
let collectionId = 987 // Int |  (optional)
let countryCode = "countryCode_example" // String | ISO country code (e.g. US, GB, DE) (optional)
let languageCode = "languageCode_example" // String | ISO language code (e.g. en, es, de) (optional)
let prompt = 987 // Int | Filter by prompt ID (optional)
let promptType = "promptType_example" // String | Filter by prompt type (search intent) (optional)
let brandKind = "brandKind_example" // String | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (optional)
let includeProject = true // Bool |  (optional) (default to true)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// Time-series metrics
MetricsAPI.getTimeseries(projectId: projectId, metrics: metrics, granularity: granularity, range: range, from: from, to: to, competitors: competitors, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, prompt: prompt, promptType: promptType, brandKind: brandKind, includeProject: includeProject, output: output) { (response, error) in
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
 **metrics** | **String** | Comma-separated list of metrics: mentions, citations, responses, mention_rate, visibility (alias for mention_rate), weighted_visibility, ai_visibility_score (alias for weighted_visibility), citation_rate, avg_position, avg_mention_position, net_sentiment, sentiment_very_positive, sentiment_positive, sentiment_neutral, sentiment_negative, sentiment_very_negative. Citations and citation_rate include visible citations and background source references; avg_position uses visible citations only. | [optional] 
 **granularity** | **String** |  | [optional] 
 **range** | **Int** | Number of days to look back (alternative to from/to) | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** |  | [optional] 
 **competitors** | **String** | Comma-separated competitor IDs (unknown IDs return ERR_INVALID_PARAM) | [optional] 
 **model** | **String** | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collectionId** | **Int** |  | [optional] 
 **countryCode** | **String** | ISO country code (e.g. US, GB, DE) | [optional] 
 **languageCode** | **String** | ISO language code (e.g. en, es, de) | [optional] 
 **prompt** | **Int** | Filter by prompt ID | [optional] 
 **promptType** | **String** | Filter by prompt type (search intent) | [optional] 
 **brandKind** | **String** | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **includeProject** | **Bool** |  | [optional] [default to true]
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**TimeseriesResponse**](TimeseriesResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTopSources**
```swift
    open class func getTopSources(projectId: Int, range: Int? = nil, from: Date? = nil, to: Date? = nil, model: Model_getTopSources? = nil, collectionId: Int? = nil, countryCode: String? = nil, languageCode: String? = nil, prompt: Int? = nil, promptType: PromptType_getTopSources? = nil, brandKind: BrandKind_getTopSources? = nil, sort: Sort_getTopSources? = nil, query: String? = nil, page: Int? = nil, perPage: Int? = nil, output: Output_getTopSources? = nil, completion: @escaping (_ data: TopSourcesResponse?, _ error: Error?) -> Void)
```

Top cited sources

Registrable domains most frequently cited in AI responses for the project, including visible citations and background source references. This endpoint remains a domain rollup when exact-subdomain matching is enabled. Results can be sorted by total responses, average mention rate, or average visibility.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import LLMPulse

let projectId = 987 // Int | Project ID
let range = 987 // Int | Number of days to look back (alternative to from/to) (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)
let model = "model_example" // String | Filter by AI model. Models the API key's user has not enabled are silently dropped. (optional)
let collectionId = 987 // Int |  (optional)
let countryCode = "countryCode_example" // String | ISO country code (e.g. US, GB, DE) (optional)
let languageCode = "languageCode_example" // String | ISO language code (e.g. en, es, de) (optional)
let prompt = 987 // Int | Filter by prompt ID (optional)
let promptType = "promptType_example" // String | Filter by prompt type (search intent) (optional)
let brandKind = "brandKind_example" // String | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. (optional)
let sort = "sort_example" // String |  (optional) (default to .totalResponses)
let query = "query_example" // String | Filter domains by case-insensitive partial match (optional)
let page = 987 // Int |  (optional) (default to 1)
let perPage = 987 // Int |  (optional) (default to 20)
let output = "output_example" // String | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. 'flat' returns the same metadata plus 'columns' and 'rows'; 'csv' returns those rows as text/csv. Errors are always returned as JSON. (optional)

// Top cited sources
MetricsAPI.getTopSources(projectId: projectId, range: range, from: from, to: to, model: model, collectionId: collectionId, countryCode: countryCode, languageCode: languageCode, prompt: prompt, promptType: promptType, brandKind: brandKind, sort: sort, query: query, page: page, perPage: perPage, output: output) { (response, error) in
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
 **to** | **Date** |  | [optional] 
 **model** | **String** | Filter by AI model. Models the API key&#39;s user has not enabled are silently dropped. | [optional] 
 **collectionId** | **Int** |  | [optional] 
 **countryCode** | **String** | ISO country code (e.g. US, GB, DE) | [optional] 
 **languageCode** | **String** | ISO language code (e.g. en, es, de) | [optional] 
 **prompt** | **Int** | Filter by prompt ID | [optional] 
 **promptType** | **String** | Filter by prompt type (search intent) | [optional] 
 **brandKind** | **String** | Filter by brand kind: brand (own brand/products), brand_other (competitors/other brands), non_brand (generic, no brand named). For fair 1:1 brand-vs-competitor comparisons (visibility, share of voice), use non_brand: brand-focused prompts skew results toward the brand they name. The in-app Overview page applies non_brand by default. | [optional] 
 **sort** | **String** |  | [optional] [default to .totalResponses]
 **query** | **String** | Filter domains by case-insensitive partial match | [optional] 
 **page** | **Int** |  | [optional] [default to 1]
 **perPage** | **Int** |  | [optional] [default to 20]
 **output** | **String** | Rectangular output for BI tools (Tableau, Excel, Sheets, ELT). Omit for the default nested JSON. &#39;flat&#39; returns the same metadata plus &#39;columns&#39; and &#39;rows&#39;; &#39;csv&#39; returns those rows as text/csv. Errors are always returned as JSON. | [optional] 

### Return type

[**TopSourcesResponse**](TopSourcesResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

