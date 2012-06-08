# Photo Resources

    POST photos/:id/tags

## Description
Adds tags to the photo. Accepts one or multiple coma separated tags.

***

## Requires authentication
**[OAuth][]**

***

## Parameters
- **id** _(required)_ — The Photo ID to add tags for.
- **tags** _(required)_ — Coma separated tags.

***

## Return format
A JSON object with key "status" and value of 200, and key "message" with value of "Successfully added tags."

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **404 Not Found** — The photo was not found.

***

## Example
**Request**

    POST /v1/photos/8309863/tags

**Body**

    tags=cute,puppy

**Return**

    {
      "status":200,
      "message":"Successfully added tags.",
      "error":"None"
    }

  [OAuth]: https://github.com/500px/api-documentation/tree/master/authentication