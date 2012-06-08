# Blog Resources

    PUT blogs/:id

## Description
Updates the Story.

***

## Requires authentication
**[OAuth][]**

***

## Parameters

- **id** _(required)_ — The Blog Post ID to update. Can be provided either as blogs/:id or in the query string.
- **title** — Title for the blog post.
- **body** — Content of the blog post.
- **latitude** — Latitude for the blog post.
- **longitude** — Longitude for the blog post.
- **tags** — Comma separated list of tags.
- **photo_ids** — Comma separated list of Photo IDs for photos that are in the blog post.

***

## Return format
Story information in **[full format][]**.



***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **403 Forbidden** — You do not own the blog post you are trying to update.
- **404 Not Found** — The requested blog post does not exist or was deleted.
- **422 Unprocessable Entity** — One or more of the required fields didn't include valid data.

***

## Example
**Request**

    POST v1/blogs/40185

**Body**

    title=My+Vacation&title=Hawaii+trip

**Return**

  {
      "id": 40185,
      "title": "Hawaii trip",
      "body": "I went on a vacation to Hawaii",
      "created_at": "2012-06-07T17:10:54-04:00",
      "latitude": null,
      "longitude": null,
      "user": {
          "id": 173,
          "username": "vovko",
          "firstname": "Vladimir",
          "lastname": "Drizhepolov",
          "city": "Toronto",
          "country": "Canada",
          "fullname": "Vladimir Drizhepolov",
          "userpic_url": "http://acdn.500px.net/173.jpg",
          "upgrade_status": 2
      },
      "tags": null,
      "photos": [
          {
              "id": 8309863,
              "name": "Untitled",
              "rating": 59.7,
              "created_at": "2012-06-05T17:40:48-04:00",
              "category": 0,
              "votes_count": 1,
              "image_url": "http://pcdn.500px.net/8309863/49a60b97f30125b223f4e38ab53c6525435888f2/4.jpg"
          }
      ]
  }

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[full format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#full-format