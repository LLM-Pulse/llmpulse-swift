# AnalystScoreRow

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**brand** | **String** | Brand name; the subject name in a custom study | 
**isProject** | **Bool** | Whether it is the project&#39;s own brand; in a custom study, the focus subject | 
**model** | **String** |  | 
**reportDate** | **Date** |  | 
**dimension** | **String** | Dimension key, as the dimension filter takes it | 
**dimensionName** | **String** |  | 
**attribute** | **String** | Attribute key within the dimension | 
**attributeName** | **String** |  | 
**score** | **JSONValue** | The 0-100 score as the analyst model wrote it, normally a number, or null when it gave none. Deliberately untyped, as the model&#39;s output is stored without coercion | 
**reasoning** | **String** | Why the model gave this score; null when it gave no reasoning | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


