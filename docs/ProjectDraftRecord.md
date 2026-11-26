# ProjectDraftRecord

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**draftId** | **String** | Draft id (draft_...) | 
**status** | **String** | open, finalized or expired | 
**currentStep** | **String** | The next step to submit (details, prompts, competitors, owned_media), or ready when the draft can be finalized | 
**stepsCompleted** | **[String]** |  | 
**stepsRemaining** | **[String]** | Required steps not submitted yet | 
**optionalSteps** | **[String]** | Steps the plan allows but finalize does not require (owned_media from Growth) | 
**finalizable** | **Bool** |  | 
**websiteUrl** | **String** |  | 
**mainCountry** | **String** |  | 
**mainLanguage** | **String** |  | 
**useSubdomain** | **Bool** |  | 
**name** | **String** | Null until the details step | 
**brandName** | **String** |  | 
**description** | **String** |  | 
**industry** | **[String]** |  | 
**matchingNames** | **[String]** |  | 
**prompts** | **[String]** |  | 
**competitors** | [ProjectDraftRecordCompetitorsInner] |  | 
**ownedMedia** | [**ProjectDraftRecordOwnedMedia**](ProjectDraftRecordOwnedMedia.md) |  | 
**weeklyEmailSubscribed** | **Bool** |  | 
**externalIdentifier** | **String** |  | 
**executePromptsImmediately** | **Bool** |  | 
**projectId** | **Int** | The project the draft became; null until finalized | 
**expiresAt** | **Date** |  | 
**createdAt** | **Date** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


