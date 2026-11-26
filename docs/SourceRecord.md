# SourceRecord

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | 
**promptExecutionId** | **Int** |  | 
**domain** | **String** | Registrable domain of the cited URL | 
**url** | **String** | Normalized cited URL (tracking parameters and fragment removed) | 
**urlSha256** | **String** | Key of the cited page, as GET /citation_intelligence/urls/{url_sha256} takes it | 
**position** | **Int** | Rank of the citation in the answer; 0 for a background source reference with no visible rank | 
**sourceType** | **String** | owned (the project&#39;s domains), competitor or third_party | 
**isGooglePlayLink** | **Bool** |  | 
**isAppStoreLink** | **Bool** |  | 
**createdAt** | **Date** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


