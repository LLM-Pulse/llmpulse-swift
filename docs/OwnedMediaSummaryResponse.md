# OwnedMediaSummaryResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projectId** | **Int** |  | [optional] 
**provider** | **String** |  | [optional] 
**from** | **Date** |  | [optional] 
**to** | **Date** |  | [optional] 
**connected** | **Bool** | Whether a profile is claimed on the platform (on overview, on any platform) | [optional] 
**kpis** | [**OwnedMediaKpis**](OwnedMediaKpis.md) |  | [optional] 
**previous** | [**OwnedMediaSummaryResponsePrevious**](OwnedMediaSummaryResponsePrevious.md) |  | [optional] 
**changes** | [**OwnedMediaKpiChanges**](OwnedMediaKpiChanges.md) |  | [optional] 
**weekly** | [OwnedMediaWeek] |  | [optional] 
**byModel** | [OwnedMediaModelShare] | Null for provider&#x3D;overview | [optional] 
**byCountry** | [OwnedMediaCountryShare] | Null for provider&#x3D;overview | [optional] 
**contentTypes** | [OwnedMediaContentTypeShare] | Social and YouTube providers only | [optional] 
**ageBuckets** | [OwnedMediaAgeBucketShare] | Social and YouTube providers only. Posts or videos without a known publication date are left out | [optional] 
**stores** | [OwnedMediaStoreTotals] | provider&#x3D;mobile_apps only | [optional] 
**platforms** | [OwnedMediaPlatformRollup] | provider&#x3D;overview only, one row per platform the caller can read | [optional] 
**requestId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


