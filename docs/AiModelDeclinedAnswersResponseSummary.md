# AiModelDeclinedAnswersResponseSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**answers** | **Int** | Finished runs of the model, declined ones included | [optional] 
**declined** | **Int** | Answers the model declined | [optional] 
**declineRate** | **Double** |  | [optional] 
**safetyFilter** | **Int** | Answers declined by the model&#39;s own safety filters | [optional] 
**safetyFilterRate** | **Double** |  | [optional] 
**topicRefusal** | **Int** | Answers that declined the topic itself, such as tobacco, gambling or alcohol | [optional] 
**topicRefusalRate** | **Double** |  | [optional] 
**lastDeclinedAt** | **Date** | When the latest declined answer of the window was created; null when none was declined | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


