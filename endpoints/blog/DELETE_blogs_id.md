# Blog Resources

    DELETE blogs/:id

## Description
Deletes a blog post.

***

## Requires authentication
OAuth

***

## Parameters

- **id** _(required)_ — The Blog Post ID to delete. Can be provided either as blogs/:id or in the query string.

***

## Return format
A JSON object containing key 'status' with value 'OK'.

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **403 Forbidden** — You do not own the blog post you are trying to delete.
- **404 Not Found** — The requested blog post does not exist or was deleted.

***

## Example
**Request**

    DELETE /v1/blogs/30

**Return**

    {
      "status": "OK"
    }