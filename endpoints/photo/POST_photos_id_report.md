# Photo Resources

    POST photos/:id/report

## Description
Allows to report a photo.

***

## Parameters

- **id** _(required)_ — ID of the photo to report.
- **reason** _(required)_ — Reason for the report
    - '1' — Offensive (rude, obscene)
    - '2' — Spam (ads, self-promotion)
    - '3' — Offtopic (trolling)
    - '4' — Copyright (plagiarism, stealing)
    - '5' — Wrong content (illustration, 3D)
    - '6' — Should be tagged as adult content
    - '0' — Other, request should ideally also include **reason_details**
- **reason_details** — Additional information about the report, as a text blob

***

## Return format
A JSON object containing success attribute.

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **400 Bad Request** — The request issued is missing one or more of the required parameters or contains parameters in an invalid form.
- **404 Not Found** — Photo with the specified ID does not exist.

***

## Example
**Request**

    POST /v1/photos/112116/report

**Return**
``` json
{
  "success": true
}
```
