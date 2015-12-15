# Galleries Resources

    PUT users/:user_id/galleries/reposition

## Description

Bulk repositions galleries.  Accepts a set of gallery ids, and repositions them in the given order at the end of the list of galleries. Optionally, galleries can be positioned relative to an existing gallery by specifying a `before_id` or `after_id`. **Specifying both will return an error**.

***

## Requires Authentication
 **[OAuth][]**

## Parameters

- **galleries** _(required)_ - The set of gallery ids to reposition, separated by commas
- **before_id** - The id of another gallery to position the galleries before
- **after_id** - The id of another gallery to position the galleries after

***

## Return format

Returns a JSON hash of gallery ids, and their reposition completion status (success or error)

***

## Errors

All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **400 Bad Request** — The request issued is missing one or more of the required parameters or contains parameters in an invalid form.
- **401 Unauthorized** - You are not authenticated through OAuth.
- **403 Forbidden** — You are not the owner of one or more of the galleries.
- **404 Not Found** — One or more of the galleries with a specified ID does not exist.

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[short format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#short-format-3
