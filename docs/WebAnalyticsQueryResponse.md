# WebAnalyticsQueryResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | [optional] 
**provider** | **String** |  | [optional] 
**property** | **String** |  | [optional] 
**columns** | [WebAnalyticsQueryResponseColumnsInner] |  | [optional] 
**rows** | [[JSONValue]] | One array per row, values in column order: strings, numbers or null. | [optional] 
**rowCount** | **Int** | Rows in this response (at most 5,000). | [optional] 
**totalRows** | **Int** | Rows the provider has for the query, when it reports it. | [optional] 
**truncated** | **Bool** | True when the provider has more rows than returned; page with its own offset or page field. | [optional] 
**totals** | **[String: JSONValue]** | Metric totals by metric name, when the query asked for them. | [optional] 
**notes** | **[String]** | Provider caveats: sampling, thresholds, more rows available. | [optional] 
**meta** | **[String: JSONValue]** | Provider metadata such as GA4 time zone, currency and remaining property quota. | [optional] 
**fetchedAt** | **Date** | When the provider answered. | [optional] 
**cached** | **Bool** | True when the answer came from the 10-minute cache instead of the provider. | [optional] 
**query** | **[String: JSONValue]** | The request as sent to the provider, with the connected property forced and limits applied. | [optional] 
**requestId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


