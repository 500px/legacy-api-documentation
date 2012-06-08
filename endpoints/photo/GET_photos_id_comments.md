# Blog Resources

    GET photos/:id/comments

## Description
Returns a listing of twenty comments for the photo.

***

## Requires authentication
A valid Consumer Key must be provided in **consumer_key** parameter.

***

## Parameters

- **id** _(required)_ — The Photo ID to get comments for.
- **page** — Return a specific page in the comment listing. Page numbering is 1-based.

***

## Return format
An array with the following keys and values:

- **media_type** — The type of object the comment belongs to (for blog comments this will be "blog_post").
- **current_page** — Number of the page that is returned.
- **total_pages** — Total number of pages in this feature's stream.
- **total_items** — Total number of items in this feature's stream.
- **comments** — An array of Comment objects in **[full format][]**.

***

## Errors

- **404 Not Found** — The requested blog post does not exist or was deleted.

***

## Example
**Request**

    v1/photos/4928401/comments

**Return** __shortened for example purpose__

{
    "media_type": "photo",
    "current_page": 1,
    "total_pages": 2,
    "total_items": 36,
    "comments": [
         {
            "id": 8471866,
            "user_id": 122216,
            "to_whom_user_id": 164677,
            "body": "Great image of a fascinating bird. Love the topside view.",
            "created_at": "2012-02-09T21:13:32-05:00",
            "parent_id": null,
            "user": {
                "id": 122216,
                "username": "haig",
                "firstname": "John",
                "lastname": "Haig",
                "city": "1000 Islands Twp.",
                "country": "Canada",
                "fullname": "John Haig",
                "userpic_url": "http://acdn.500px.net/122216/bd556f88c7fb9eaee93ff74c057a313c8911071a/1.jpg?48",
                "upgrade_status": 2
            }
        },
        {
            "id": 8471883,
            "user_id": 81920,
            "to_whom_user_id": 164677,
            "body": "The details on the feathers are perfect. Brilliant shot. ",
            "created_at": "2012-02-09T21:14:04-05:00",
            "parent_id": null,
            "user": {
                "id": 81920,
                "username": "wisben",
                "firstname": "Manny ",
                "lastname": "Estrella",
                "city": "Arlington",
                "country": "USA",
                "fullname": "Manny Estrella",
                "userpic_url": "http://acdn.500px.net/81920.jpg",
                "upgrade_status": 0
            }
        }
    ]
}

[full format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#full-format