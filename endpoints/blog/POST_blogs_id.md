# Blog Resources

    POST blogs/:id

## Description
Updates a blog post.

***

## Requires authentication
OAuth

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
Blog post information in full format.

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **403 Forbidden** — You do not own the blog post you are trying to update.
- **404 Not Found** — The requested blog post does not exist or was deleted.
- **422 Unprocessable Entity** — One or more of the required fields didn't include valid data.

***

## Example
**Request**

    POST /v1/blogs/30

**Body**

    title=My+Vacation&body=I+went+on+a+vacation+to+Hawaii&photo_ids=251,254

**Return**

     {
      "body":"I went on a vacation to Hawaii",
      "created_at":"2011-10-17T18:07:31Z",
      "id":30,
      "latitude":null,
      "longitude":null,
      "tags":"",
      "title":"My Vacation",
      "user":{
        city":null,
        "country":null,
        "firstname":"Ian",
        "id":76,
        "lastname":"Sobolev",
        "upgrade_status":0,
        "username":"iansobolev",
        "fullname":"Ian Sobolev",
        "userpic_url":"/graphics/userpic.png"
      },
      "photos": [
        {
          "category": 0,
          "created_at": "2011-10-17T18:37:18Z",
          "id": 251,
          "name": "At the beach",
          "rating": 0,
          "image_url": "http://pcdn.500px.net/251/c636d054379a5496338ef153920be5b23bee1e9a/4.jpg",
          "votes_count": 0
        }, {
          "category": 0,
          "created_at": "2011-10-17T18:37:18Z",
          "id": 251,
          "name": "My Vacation Photo",
          "rating": 0,
          "image_url": "http://pcdn.500px.net/251/c636d054379a5496338ef153920be5b23bee1e9a/4.jpg",
          "votes_count": 0
        }
      ]
    }