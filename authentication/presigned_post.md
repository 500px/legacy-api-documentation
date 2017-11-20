# Direct upload to S3 authentication
To upload the photo to S3, you'll need to use the 'presigned_post' dict from the reponse to the initial POST to /photos endpoint.
A sample 'presigned_post' dict taken from this **[example](https://github.com/500px/api-documentation/blob/master/endpoints/photo/POST_photos.md#example)**
``` json
    "presigned_post": {
      "url": "https://s3.amazonaws.com/photos.500px.net",
      "fields": {
        "key": "...",
        "policy": "...",
        "x-amz-meta-user_id": "173",
        "x-amz-signature": "...",
        "x-amz-algorithm": "...",
        "x-amz-credential": "...",
        "x-amz-date": "20120608131704Z"
      }
    }
```

In this case a POST request would have to be made to 'https://s3.amazonaws.com/photos.500px.net' with the following json object containing key-value pairs taken from the 'fields' from 'presigned_post':
``` json 
{
  "key": "...",
  "policy": "...",
  "x-amz-meta-user_id": "173",
  "x-amz-signature": "...",
  "x-amz-algorithm": "...",
  "x-amz-credential": "...",
  "x-amz-date": "20120608131704z"
}
```

***

## Authentication requirements
The party making the request is still required to obtain an OAuth Access Token through standard OAuth workflow, and must include OAuth consumer key and access token key in the request. Current upload authentication also requires obtaining an photo_id and upload_key values returned in response to a [POST photos][] request.

## Return format
Text, containing an query string-encoded list of OAuth parameters.

- **consumer_key** — OAuth Consumer key of the application sending the request
- **access_key** — An authorized OAuth Access Token received during the standard OAuth workflow
- **upload_key** — Upload key received in the response to a [POST photos][] request
- **photo_id** — The ID of the photo the file is being uploaded for

[POST photos]: https://github.com/500px/api-documentation/blob/master/endpoints/photo/POST_photos.md
