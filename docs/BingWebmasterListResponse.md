# BingWebmasterListResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | [optional] 
**site** | **String** | The connected site, as Bing Webmaster Tools names it (e.g. https://example.com/) | [optional] 
**syncStatus** | **String** | State of the daily sync: pending, syncing, completed, failed or on_hold (the data already synced still answers, but stops updating until the site is reconnected) | [optional] 
**lastSyncedAt** | **Date** | When the site last synced. Null before its first sync, or while history_current is false. | [optional] 
**historyCurrent** | **Bool** | False right after the site was changed and before its first sync. Until then data is empty and data_through is null. | [optional] 
**from** | **Date** |  | [optional] 
**to** | **Date** |  | [optional] 
**dataThrough** | **Date** | The last week_ending synced for the site (the Friday that closes a Bing week) | [optional] 
**page** | **Int** |  | [optional] 
**perPage** | **Int** |  | [optional] 
**total** | **Int** | Distinct pages or queries found in the weeks of the window | [optional] 
**sort** | **String** |  | [optional] 
**weeksCovered** | **Int** | Weeks with data whose week_ending falls in the window | [optional] 
**data** | [BingWebmasterListResponseDataInner] |  | [optional] 
**requestId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


