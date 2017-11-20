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

In this case a POST request would have to be made to 'https://s3.amazonaws.com/photos.500px.net' with the following object containing key-value pairs taken from the 'fields' from 'presigned_post':
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

## Return format
Http status 204 is returned upon successful upload.
