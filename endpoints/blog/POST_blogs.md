# Blog Resources

    POST blogs

## Description
Creates a new Story.

***

## Requires authentication
**[OAuth][]**

***

## Parameters

Essential information:

- **title** _(required)_ — Title for the blog post.
- **body** _(required)_ — Content of the blog post.

Optional information:

- **latitude** — Latitude for the blog post.
- **longitude** — Longitude for the blog post.
- **tags** — Comma separated list of tags.
- **photo_ids** — Comma separated list of Photo ID values to post with the blog.

***

## Return format
New created Story information in **[full format][]**.

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **400 Bad Request** — One or more of the required fields was missing.
- **422 Unprocessable Entity** — One or more of the required fields didn't include valid data.

***

## Example
**Request**

    POST /v1/blogs

**Body**

    title=My+Vacation&body=I+went+on+a+vacation+to+Hawaii&photo_ids=251

**Return**

{
    "id": 40186,
    "title": "My Vacation",
    "body": "I went on a vacation to Hawaii",
    "created_at": "2012-06-07T17:10:57-04:00",
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
            "id": 251,
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