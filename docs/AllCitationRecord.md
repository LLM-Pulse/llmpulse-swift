# AllCitationRecord

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** | The citation&#39;s id, unique within its actor_type | 
**actorType** | **String** | project (your brand) or competitor | 
**competitorId** | **Int** | Competitor rows only | [optional] 
**name** | **String** | The project&#39;s brand name (its name when no brand name is set), or the competitor&#39;s brand name | 
**domain** | **String** | On project rows the host of the cited URL without www. (null when it has no parsable host); on competitor rows the competitor&#39;s bare domain | 
**promptId** | **Int** |  | 
**promptExecutionId** | **Int** |  | 
**url** | **String** | Normalized cited URL (tracking parameters and fragment removed) | 
**position** | **Int** | Rank of the citation in the answer; 0 for a background source reference with no visible rank | 
**createdAt** | **Date** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


