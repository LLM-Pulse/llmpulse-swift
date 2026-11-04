# CmsContentItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** | WordPress post or page id | [optional] 
**type** | **String** |  | [optional] 
**status** | **String** | WordPress status (publish, future, draft, pending or private) | [optional] 
**slug** | **String** |  | [optional] 
**title** | **String** | Plain-text title as the site renders it | [optional] 
**url** | **String** | The public link on the connected site; null when the site names a link on another host | [optional] 
**modifiedAt** | **Date** |  | [optional] 
**excerpt** | **String** | Plain-text excerpt, up to 2,000 characters | [optional] 
**contentHtml** | **String** | Sanitized HTML (headings, paragraphs, lists, tables, quotes, code, links with href only), up to 200,000 characters | [optional] 
**contentTruncated** | **Bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


