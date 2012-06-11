# Blog Resources

    POST collections

## Description
Creates new a collection.

***

## Requires authentication
* A valid Consumer Key must be provided in **consumer_key** parameter.
* Alternatively, a valid **[OAuth][]** request with an authorized Access Token will be accepted.

## Parameters

Essential information:

- **title** _(required)_ — Title for the collection.
- **path** _(required)_ — Path where the collection will be accessible at 500px.com/user/sets/:path.

Optional information:

- **position** — Position of the collection in the list of collections.

***

## Return format
A JSON object with **collections** — An indexed array of Collection objects in **[short format][]**.:

***

## Errors

- **path** — path of the collection has already been taken.

***

## Example
**Request**

    POST v1/collections?title=bikes&path=bikes

**Return**
``` json
{
  "id": 298782,
  "title": "bikes",
  "position": 10,
  "created_at": "2012-06-07T17:36:17-04:00",
  "path": "bikes",
  "photos": []
}
```

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[Feature]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#500px-photo-terms
[short format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#short-format-1