# WebAnalyticsSchemaResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | [optional] 
**provider** | **String** | The connected web analytics provider. | [optional] 
**property** | **String** | The property, site, report suite (rsid:...), data view (dataview:...) or project every query runs on. | [optional] 
**queryLanguage** | **String** | The native query format the provider accepts. | [optional] 
**docsUrl** | **String** | The provider&#39;s reference for that format. | [optional] 
**allowedFields** | **[String]** | Top-level query fields that are forwarded. | [optional] 
**rules** | **[String]** | What the bridge enforces and the provider&#39;s main constraints. | [optional] 
**example** | **[String: JSONValue]** | A worked query to adapt. | [optional] 
**fields** | **[String: JSONValue]** | The provider&#39;s live field list where it offers one: GA4 dimensions and metrics with custom definitions, Adobe ids, Matomo report methods, PostHog event names, the Plausible catalog. Null when the provider did not return it. | [optional] 
**fieldsUnavailable** | **String** | Present when the field list could not be read; the format and example still apply. | [optional] 
**requestId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


