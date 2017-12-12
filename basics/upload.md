# Uploading a photo
To upload a photo, you need to do 2 requests:
 1. `POST /photos`
 1. `POST url-obtained-from-first-request`
 
First, send a `POST` request to `/photos` ([see documentation](https://github.com/500px/api-documentation/blob/master/endpoints/photo/POST_photos.md)) with the photo details like title, description and so on. You may also want to set the `privacy` parameter to `1` if you wish to do a private upload or `0` for public upload.

This request will return a JSON with the upload `url` and a data structure that you need to use for the second request. Here's an example of [such data structure taken from the `POST /photos`](https://github.com/500px/api-documentation/blob/master/endpoints/photo/POST_photos.md#example)
``` json
    "presigned_post": {
      "url": "https://s3.amazonaws.com/photos.500px.net",
      "fields": {
        ...
      }
    }
```

The second request is uploading the file itself. You do that by sending a POST request to the `url` that you obtained from the previous request. The body of the request must be in the multipart form-data format and must have all the properties from the `fields` structure that was returned in the first request. NOTE: the order matters, you need to supply the `fields` in the exact same order you received it. The last parameter is the file to be uploaded in the `file` field.

Here's an example request, the fields are `form-data`:
```
POST https://s3.amazonaws.com/photos.500px.net

name="key"                     238921583/cb47e80843a0eaaaaac2fc242c9cd6bcecd6f36/0.jpg
name="x-amz-meta-user_id"      16972409
name="x-amz-meta-client_application_id" 0
name="x-amz-meta-user_agent"   Chrome/62.0.3202.94 Safari/537.36
name="x-amz-meta-user_ip"      206.223.171.146
name="policy"                  eyJleHBpcmF0aW9uIjoiMjAxN...
name="x-amz-credential"        ASDASDASDASDASD/20171212/us-east-1/s3/aws1_request
name="x-amz-algorithm"         AWS4-HMAC-SHA256
name="x-amz-date"              20171212T195326Z
name="x-amz-signature"         47aa1...
name="file"; filename="IMG_20171028_175620-01.jpeg"
Content-Type: image/jpeg

...the file contents...
```

***

## Return format
`POST /photos` will return HTTP status 200 on success. Proceed with the second request only when you get back the 200 status.

`POST url-from-first-request` will return HTTP status 204 upon successful upload.
