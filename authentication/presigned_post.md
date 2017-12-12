# Direct upload to S3 authentication
To upload the photo to S3, you'll need to use the 'presigned_post' dict from the reponse to the initial POST to /photos endpoint.
A sample 'presigned_post' dict taken from this **[example](https://github.com/500px/api-documentation/blob/master/endpoints/photo/POST_photos.md#example)**
``` json
    "presigned_post": {
      "url": "https://s3.amazonaws.com/photos.500px.net",
      "fields": {
        ...
      }
    }
```

To upload, simply make a POST request to `presigned_post['url']` (eg. 'https://s3.amazonaws.com/photos.500px.net'). The body should contain the contents of `presigned_post['fields']` (NOTE: the order matters, you need to supply the `fields` in the exact same order you receive it), followed by the file to be uploaded in the `file` field.
***

## Return format
Http status 204 is returned upon successful upload.
