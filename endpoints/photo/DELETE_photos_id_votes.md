# Photo Resources

    DELETE photos/:photo_id/vote

## Description
Unlikes the specified photo for the user.

***

## Requires authentication
**[OAuth][]**

***

## Parameters

- **id** _(required)_ — The Photo ID to unlike.

***

## Return format
A JSON object containing keys: **status**, **message**, **photo** (in **[short format][]**) and **error**(if happened).

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **404 Not Found** — The requested photo does not exist or was deleted.

***

## Example
**Request**

    DELETE v1/photos/8359543/vote

**Return**
``` json
{
    "status": 200,
    "message": "Successfully unliked photo.",
    "photo": {
      "id": 12345,
      "name": "photo1",
      ...
    }
    "error": "None"
}
```

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[short format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#short-format