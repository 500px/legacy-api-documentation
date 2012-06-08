# Blog Resources

    POST blogs/:id/comments

## Description
Creates a comment for the Story.

***

## Requires authentication
**[OAuth][]**

***

## Parameters
- **id** _(required)_ — The Story ID to create a comment for. Can be provided either as blogs/:id or in the query string.
- **body** _(required)_ — Content of the comment.

***

## Return format
A JSON object with key "status" and value of 200, and key "message" with value of "Successfully added a comment."

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **400 Bad Request** — The body of the comment was not specified.
- **404 Not Found** — The specified Story was not found.

***

## Example
**Request**

    POST v1/blogs/40185/comments

**Body**

    body=I+like+your+photos

**Return**
``` json
{
  "status" : 200,
  "message" : "Successfully added a comment.",
  "error" : "None"
}
```

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication