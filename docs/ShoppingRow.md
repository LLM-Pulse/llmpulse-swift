# ShoppingRow

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**productKey** | **String** | Stable grouping key of the product: its external id, else title: and the lowercased title (view&#x3D;products) | [optional] 
**title** | **String** |  | [optional] 
**domain** | **String** |  | [optional] 
**url** | **String** |  | [optional] 
**merchants** | **String** | The merchants the product card names (view&#x3D;products) | [optional] 
**merchant** | **String** | The merchant (view&#x3D;merchants) | [optional] 
**products** | **Int** | Distinct products the merchant sold (view&#x3D;merchants) | [optional] 
**currency** | **String** | Currency code the prices are in; null when no price names one | 
**currencyCount** | **Int** | Currencies the product was priced in; above 1 the row reports its highest-priced listing (view&#x3D;products) | [optional] 
**minPrice** | **Double** |  | 
**maxPrice** | **Double** |  | 
**avgPrice** | **Double** | Average price in currency (view&#x3D;merchants) | [optional] 
**avgRating** | **Double** |  | 
**ratingVotes** | **Int** | Most rating votes any listing of the product showed (view&#x3D;products) | [optional] 
**appearances** | **Int** |  | 
**isClient** | **Bool** | Whether the product is identified as your brand&#39;s own (view&#x3D;products) | [optional] 
**bestRank** | **Int** | Best rank the product got in a card list (view&#x3D;products) | [optional] 
**models** | **[String]** | Models that showed the product (view&#x3D;products) | [optional] 
**lastSeenAt** | **Date** | The latest answer that showed the product (view&#x3D;products) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


