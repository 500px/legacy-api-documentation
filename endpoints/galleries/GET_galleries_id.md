# Galleries Resources

    GET users/:user_id/galleries/:id

## Description

Returns the details of the requested gallery

`:id` can be one of the following:

* gallery id
* gallery path
* gallery token

Gallery id and path can be used to access any publicly-shared galleries, while
knowing a gallery's secret token allows access to the corresponding private galler (regardless of ownership).
The gallery id can be used to access any gallery owned by the current user (public or private).

***

## Requires authentication
* A valid Consumer Key must be provided in **consumer_key** parameter.
* Alternatively, a valid **[OAuth][]** request with an authorized Access Token will be accepted.

***

## Parameters
None

***

## Return format
The requested Gallery object in **[full format][]**.

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **404 Not Found** — The gallery you are requesting does not exist, or is private (and you are not its owner)

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[full format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#full-format-3
