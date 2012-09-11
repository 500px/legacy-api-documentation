# Photo Resources

    GET photos/:id/favorites

## Description
Returns all users that had favourite that photo.

***

## Requires authentication
* A valid **[OAuth][]** request with an authorized Access Token will be accepted.

***

## Parameters

- **page** — Return a specific page in the photo stream. Page numbering is 1-based.
- **rpp** — The number of results to return. Can not be over 100, default 20.

***

## Return format
A JSON object containing users that favourited that photo.

- **current_page** — Number of the page that is returned.
- **total_pages** — Total number of pages in this feature's stream.
- **total_items** — Total number of items in this feature's stream.
- **users** — Profile of the author of the comment in **[short format][]**.

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **403 Forbidden** — The photo was either deleted, belongs to a deactivated user.
- **404 Not Found** — Photo with the specified ID does not exist.


***

## Example
**Request**

    v1/photos/4928401?comments

**Return** __shortened for example purpose__
``` json
{
  "current_page": 1,
  "total_pages": 27,
  "total_items": 534,
  "users": [
    {
      "id": 477772,
      "username": "danendid",
      "firstname": "Estetic of",
      "lastname": "Senses",
      "city": "Brussels",
      "country": "Belgium",
      "fullname": "Estetic of Senses",
      "userpic_url": "http://acdn.500px.net/477772/fca7121758c49b13d33511662f0ecb4abb4097e9/1.jpg?126",
      "upgrade_status": 0
    },
    {
      "id": 490956,
      "username": "LK_fine_artist",
      "firstname": "Christian",
      "lastname": "Lamos",
      "city": "Budapest",
      "country": "Hungary",
      "fullname": "Christian Lamos",
      "userpic_url": "http://acdn.500px.net/490956/a5e57c142d21242c0d37de1e4f3b5f3688447a22/1.jpg?10",
      "upgrade_status": 0
    },
    {
      "id": 843534,
      "username": "Agnieszkauczywo",
      "firstname": "Agnieszka",
      "lastname": "Łuczywo",
      "city": null,
      "country": null,
      "fullname": "Agnieszka Łuczywo",
      "userpic_url": "/graphics/userpic.png",
      "upgrade_status": 0
    }
    ]
}
```

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[short format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#short-format-1
[full format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#full-format