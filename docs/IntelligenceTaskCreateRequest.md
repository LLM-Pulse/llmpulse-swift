# IntelligenceTaskCreateRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | 
**taskType** | **String** | product_listing is API-only: it needs product and returns ready-to-apply product page copy | 
**promptId** | **Int** | Not used by product_listing; send null or omit it | [optional] 
**customTopic** | **String** |  | [optional] 
**userInstructions** | **String** |  | [optional] 
**outputLanguageCode** | **String** |  | [optional] 
**existingContent** | **String** |  | [optional] 
**existingContentUrl** | **String** |  | [optional] 
**product** | [**IntelligenceTaskProduct**](IntelligenceTaskProduct.md) |  | [optional] 
**promptIds** | **[Int]** | product_listing only: up to 20 project prompts the copy should answer | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


