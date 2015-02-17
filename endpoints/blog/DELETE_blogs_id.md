# Blog Resources

    DELETE blogs/:id

## Description
Deletes the story.

***

## Requires authentication
**[OAuth][]**

***

## Parameters

- **id** _(required)_ — The Story ID to delete.

***

## Return format
A JSON object containing key 'status' with value 'OK'.

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **403 Forbidden** — You do not own the story you are trying to delete.
- **404 Not Found** — The requested story does not exist or was deleted.

***

## Example
**Request**

    DELETE /v1/blogs/528491

**Return**
``` json
    {
      "status": "OK"
    }
```

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
