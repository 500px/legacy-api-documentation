# Blog Resources

    GET collections/:id

## Description
Returns a collection.

***

## Requires authentication
* A valid Consumer Key must be provided in **consumer_key** parameter.
* Alternatively, a valid **[OAuth][]** request with an authorized Access Token will be accepted.

***

## Return format
A JSON object with **collections** — An indexed array of Collection objects in **[short format][]**.:

***

## Errors
None

***

## Example
**Request**

    GET v1/collections/52

**Return**
``` json
{
  "id": 52,
  "title": "models",
  "position": 0,
  "created_at": "2012-06-04T13:55:08-04:00",
  "path": "models",
  "kind": "portfolio",
  "photos": [
    {
      "id": 500,
      "name": "Maria | portrait 1",
      "rating": 0,
      "created_at": "2012-06-04T10:18:18-04:00",
      "category": 0,
      "image_url": "http://dpcdn.500px.net/500/1e38495dab54fbe8bcc3b7a3679ee8f52e34cc8f/4.jpg",
      "votes_count": 0,
      "position": 999
    },
    {
      "id": 499,
      "name": "Maria | portrait 2",
      "rating": 0,
      "created_at": "2012-06-04T10:18:12-04:00",
      "category": 0,
      "image_url": "http://dpcdn.500px.net/499/3a323000e7b9ca7676b01de3916543c479e636f0/4.jpg",
      "votes_count": 0,
      "position": 999
    }
  ]
}
```

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[short format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#short-format-1
