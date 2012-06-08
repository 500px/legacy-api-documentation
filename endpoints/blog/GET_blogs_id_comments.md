# Blog Resources

    GET blogs/:id/comments

## Description
Returns a listing of twenty comments for a specific Story.

***

## Requires authentication
* A valid Consumer Key must be provided in **consumer_key** parameter.
* Alternatively, a valid **[OAuth][]** request with an authorized Access Token will be accepted.

***

## Parameters

- **id** _(required)_ — The Story ID to get comments for. Can be provided either as blogs/:id or in the query string.
- **page** — Return a specific page in the comment listing. Page numbering is 1-based.

***

## Return format
An array with the following keys and values:

- **media_type** — The type of object the comment belongs to (for story comments this will be "blog_post").
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

    v1/blogs/27105/comments

**Return**
``` json
  {
    "media_type":"blog_post",
    "current_page":1,
    "total_pages":1,
    "total_items":1,
    "comments": [
      {
        "id": 9311893,
        "user_id": 550582,
        "to_whom_user_id": 1,
        "body": "Awesome",
        "created_at": "2012-02-23T02:36:47-05:00",
        "parent_id": null,
        "user": {
          "id": 550582,
          "username": "springfield",
          "firstname": "Dipankar",
          "lastname": "Dey",
          "city": "Kolkata",
          "country": "India",
          "fullname": "Dipankar Dey",
          "userpic_url": "http://acdn.500px.net/550582/88a46d1defb0bbbe41cc39c64ab6d9946a69e8f5/1.jpg?127",
          "upgrade_status": 0
      }
    ]
  }
```

[full format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#full-format