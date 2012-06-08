# Blog Resources

    GET blogs/:id

## Description
Returns detailed information of a single story.

***

## Requires authentication
* A valid Consumer Key must be provided in **consumer_key** parameter.
* Alternatively, a valid **[OAuth][]** request with an authorized Access Token will be accepted.

***

## Parameters

- **id** _(required)_ - Return information for the specific story. Can be provided either as blogs/:id or in the query string

***

## Return format
A JSON object containing a Story object in **[full format][]**.

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **403 Forbidden** — The blog post was either deleted or belongs to a deactivated user.
- **404 Not Found** — Blog post with the specified ID does not exist.

***

## Example
**Request**

    GET v1/blogs/1195521

**Return**
``` json
{
  "id": 27105,
  "title": "On the Top of the World",
  "body": "I went on vacation and took some photos...",
  "created_at": "2012-02-22T15:40:55-05:00",
  "latitude": null,
  "longitude": null,
  "user": {
      "id": 1,
      "username": "tchebotarev",
      "firstname": "Evgeny",
      "lastname": "Tchebotarev",
      "city": "Toronto",
      "country": "Canada",
      "fullname": "Evgeny Tchebotarev",
      "userpic_url": "http://acdn.500px.net/1/34059c97bf3c79f4923cd083756e6a8d726fa956/1.jpg?64",
      "upgrade_status": 2
    }, 
    "tags": null,
    "photos": [
      {
        "id": 5231155,
        "name": "Freedom!",
        "rating": 0,
        "created_at": "2012-02-22T15:35:54-05:00",
        "category": 0,
        "votes_count": 0,
        "image_url": "http://pcdn.500px.net/5231155/9199218ab61a540730a06a8d7e63726bf6fc7411/4.jpg"
      },
      {
        "id": 5231149,
        "name": "500px and Mt. Everest",
        "rating": 0,
        "created_at": "2012-02-22T15:35:48-05:00",
        "category": 0,
        "votes_count": 0,
        "image_url": "http://pcdn.500px.net/5231149/d86ab909059eae5561bf837c1004a37c9764fdd3/4.jpg"
      }
    ]
}
```

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[full format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#full-format