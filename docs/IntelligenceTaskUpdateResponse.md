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
**resultData** | **JSONValue** | Only present when status&#x3D;&#39;completed&#39; | [optional] 
**errorMessage** | **String** |  | [optional] 
**estimatedTime** | **String** |  | [optional] 
**createdAt** | **Date** |  | [optional] 
**processedAt** | **Date** |  | [optional] 
**manuallyEditedAt** | **Date** | When the content was last edited by hand; null while the output is as generated | [optional] 
**editedByUserId** | **Int** | User behind the last manual edit; null for an unedited task or an edit made from an embedded portal | [optional] 
**requestId** | **String** |  | [optional] 
**changedPaths** | **[String]** | Paths whose text actually changed; empty when every value matched the stored text | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


