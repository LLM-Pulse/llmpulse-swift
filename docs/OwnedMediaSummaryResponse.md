# OwnedMediaSummaryResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | [optional] 
**provider** | **String** |  | [optional] 
**from** | **Date** |  | [optional] 
**to** | **Date** |  | [optional] 
**connected** | **Bool** | Whether a profile is claimed on the platform (on overview, on any platform) | [optional] 
**kpis** | [**OwnedMediaKpis**](OwnedMediaKpis.md) |  | [optional] 
**previous** | [**OwnedMediaSummaryResponsePrevious**](OwnedMediaSummaryResponsePrevious.md) |  | [optional] 
**changes** | [**OwnedMediaKpiChanges**](OwnedMediaKpiChanges.md) |  | [optional] 
**weekly** | [OwnedMediaWeek] |  | [optional] 
**byModel** | [OwnedMediaModelShare] | Null for provider&#x3D;overview | [optional] 
**byCountry** | [OwnedMediaCountryShare] | Null for provider&#x3D;overview | [optional] 
**contentTypes** | [OwnedMediaContentTypeShare] | Social and YouTube providers only | [optional] 
**ageBuckets** | [OwnedMediaAgeBucketShare] | Social and YouTube providers only. Posts or videos without a known publication date are left out | [optional] 
**stores** | [OwnedMediaStoreTotals] | provider&#x3D;mobile_apps only | [optional] 
**platforms** | [OwnedMediaPlatformRollup] | provider&#x3D;overview only, one row per platform the caller can read | [optional] 
**activity** | [OwnedMediaSummaryActivityPeriod] | All providers. One row per project tracking period that holds a run inside the window; provider&#x3D;overview has null yours and other, and provider&#x3D;reddit also returns positive, neutral and negative sentiment counts. Citation counts use the days of the selected date window only, so when the window starts mid-period the first period counts fewer days than the app chart, which reads it whole. A period whose runs all fell before from is left out, and a period with runs but no citation has zero | [optional] 
**subredditActivity** | [RedditSubredditActivityPeriod] | provider&#x3D;reddit only. One row per subreddit and tracking period that holds a run inside the window; the top five subreddits are separate and Others has a null subreddit | [optional] 
**positions** | [RedditPositionShare] | provider&#x3D;reddit only. Position distribution over the selected date window | [optional] 
**brandShare** | [RedditBrandShare] | provider&#x3D;reddit only. Citation share among the tracked brand and competitors with cited mentions | [optional] 
**replies** | [**TrustpilotReplies**](TrustpilotReplies.md) |  | [optional] 
**requestId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


