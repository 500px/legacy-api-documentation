# Upload Method

    POST upload

## Description
Allows an application to upload the photo file.

***

## Requires authentication
Upload key

***

## Parameters
The file upload is done through the means of a standard [HTTP multipart POST request][multipart]. The request should include a Content-type header with a value of multipart/form-data.

[multipart]: https://www.ietf.org/rfc/rfc1867.txt

See authentication schema: **Upload key**

- **photo_id** — The ID of the photo the file is being uploaded for. The ID should be known to the client from the POST photos request result.
- **file** — The multipart HTTP upload. This is expected to be of the same format as when a file is being sent from an HTML file form.

***

## Return format
A HTTP 200 OK header along with a JSON-encoded object including 'error' and 'status' keys, where 'error' should be 'None.' and 'status' should equal to 200.

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **400 Bad Request** — One or more of the essential parameters is missing. You have either missed the file attachment, photo_id, or the upload key.
- **401 Unauthorized** — One or more parameters required to authenticate your request is missing.
- **403 Forbidden** — Authentication of the request has failed. This means although the parameter in question was present, its verification has failed.
- **404 Not Found** — The photo_id provided is not known to our database.