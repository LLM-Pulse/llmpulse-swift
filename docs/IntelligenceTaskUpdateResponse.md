# IntelligenceTaskUpdateResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | [optional] 
**publicId** | **String** |  | [optional] 
**projectId** | **Int** |  | [optional] 
**taskType** | **String** |  | [optional] 
**title** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**promptId** | **Int** |  | [optional] 
**promptText** | **String** |  | [optional] 
**agenticMode** | **Bool** |  | [optional] 
**customTopic** | **String** |  | [optional] 
**userInstructions** | **String** |  | [optional] 
**outputLanguageCode** | **String** |  | [optional] 
**wordCount** | **Int** |  | [optional] 
**resultData** | **JSONValue** | The generated content once status is completed; null before that. A product_listing task returns title, summary, description_html (p, ul, ol, li, strong, em, h3 and br only), faq (question and answer pairs), seo_title, seo_description, image_alts (image_id and alt), changes (field and reason) and labels | [optional] 
**errorMessage** | **String** |  | [optional] 
**estimatedTime** | **String** |  | [optional] 
**createdAt** | **Date** |  | [optional] 
**processedAt** | **Date** |  | [optional] 
**manuallyEditedAt** | **Date** | When the content was last edited by hand; null while the output is as generated | [optional] 
**editedByUserId** | **Int** | User behind the last manual edit; null for an unedited task or an edit made from an embedded portal | [optional] 
**requestId** | **String** |  | [optional] 
**changedPaths** | **[String]** | Paths whose text actually changed; empty when every value matched the stored text | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


