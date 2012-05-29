# Upload key authorization

OAuth does not support encoding multipart/form-data messages. As such, it is impossible to send a valid OAuth request containing file data without performing extra encoding. As a workaround, 500px.com API uses a separate request authentication schema for file uploads.

***

## Authentication requirements
The party making the request is still required to obtain an OAuth Access Token through standard OAuth workflow, and must include OAuth consumer key and access token key in the request. Current upload authentication also requires obtaining an photo_id and upload_key values returned in response to a [POST photos][] request.

## Parameters
To have an upload request authenticate successfully, the following parameters must be included:

## Return format
Text, containing an query string-encoded list of OAuth parameters.

- **consumer_key** — OAuth Consumer key of the application sending the request
- **access_key** — An authorized OAuth Access Token received during the standard OAuth workflow
- **upload_key** — Upload key received in the response to a [POST photos][] request
- **photo_id** — The ID of the photo the file is being uploaded for

[POST photos]: https://github.com/500px/api-documentation/blob/master/endpoints/photo/POST_photos.md