# PromptRecord

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | 
**promptText** | **String** |  | 
**collectionId** | **Int** | Primary tag, when the prompt has one | 
**collectionIds** | **[Int]** | Every tag the prompt belongs to | 
**tags** | [TagRef] |  | 
**countryCode** | **String** |  | 
**languageCode** | **String** |  | 
**promptType** | **String** | Search intent: informational, navigational, commercial or transactional. Null until the prompt is classified | 
**brandKind** | **String** | Brand focus: brand, brand_other or non_brand. Null until the prompt is classified | 
**lastExecutedAt** | **Date** | Null until the prompt has run | 
**appUrl** | **String** | Opens this prompt in the app. The link names its project, so it opens there for any user with access to that project | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


