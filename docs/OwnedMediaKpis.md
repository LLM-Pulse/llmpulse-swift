# OwnedMediaKpis

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **Int** | Citations of the platform in the window, yours and everyone else&#39;s | [optional] 
**yours** | **Int** | Citations of your own profiles and their content | [optional] 
**yourProfile** | **Int** | Citations of your profile or channel pages. Null for mobile_apps and overview | [optional] 
**yourContent** | **Int** | Citations of your posts or videos. Null for mobile_apps and overview | [optional] 
**sharePct** | **Double** | yours as a percentage of total (0-100) | [optional] 
**uniqueSubreddits** | **Int** | Number of cited subreddits (provider&#x3D;reddit; null or omitted for other providers) | [optional] 
**uniqueAuthors** | **Int** | Number of cited Reddit authors (provider&#x3D;reddit; null or omitted for other providers) | [optional] 
**positivePct** | **Double** | Positive sentiment among rated Reddit citations, as a percentage (provider&#x3D;reddit; null or omitted for other providers) | [optional] 
**connectedCount** | **Int** | provider&#x3D;overview only. The platforms with a connected profile, channel or app, out of the rows in platforms (the Connected sources card). It describes the current setup, so previous.kpis and changes leave it out | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


