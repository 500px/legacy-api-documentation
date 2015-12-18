# Galleries Resources

    DELETE users/:user_id/galleries/:id

## Description

Deletes the gallery.

***

## Requires authentication
**[OAuth][]**

***

## Parameters

- **id** _(required)_ — The ID of the gallery to delete.

***

## Return format
A JSON object containing keys: **status**, **message** and **error** (if an error occurred).

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **403 Forbidden** — You do not own the gallery you are trying to delete.
- **404 Not Found** — The gallery you are trying to delete does not exist, or is private (and you are not its owner)

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
