# Photo Resources

    DELETE photos

## Description
Deletes the photo from the User's library.

***

## Requires authentication
**[OAuth][]**

***

## Parameters

- **id** _(required)_ — The Photo ID to delete.

***

## Return format
A JSON object containing keys: **status**, **message** and **error**(if happened).

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **403 Forbidden** — You do not own the photo you are trying to delete.
- **404 Not Found** — The requested photo does not exist or was deleted.

***

## Example
**Request**

    DELETE v1/photos/8359543

**Return**
``` json
{
    "status": 200,
    "message": "Successfully deleted a photo.",
    "error": "None"
}
```

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication