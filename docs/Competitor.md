# Competitor

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | [optional] 
**name** | **String** |  | [optional] 
**domain** | **String** | Bare (scheme-less) domain. Null only on the own-brand row (include_project_brand&#x3D;true) when the project has no URL. | [optional] 
**matchingNames** | **[String]** | Alternative names matched as this competitor. Absent on the own-brand row | [optional] 
**citationMatchMode** | [**CitationMatchMode**](CitationMatchMode.md) |  | [optional] 
**citationMatchPath** | **String** | Set only when citation_match_mode is path_prefix | [optional] 
**actorType** | **String** | Only present when include_project_brand&#x3D;true | [optional] 
**isOwn** | **Bool** | Only present when include_project_brand&#x3D;true | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


