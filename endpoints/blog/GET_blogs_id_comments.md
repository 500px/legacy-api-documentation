# Blog Resources

    GET blogs/:id/comments

## Description
Returns a listing of twenty comments.

***

## Requires authentication
A valid Consumer Key must be provided in **consumer_key** parameter.

***

## Parameters

- **id** _(required)_ — The Blog Post ID to get comments for. Can be provided either as blogs/:id or in the query string.
- **page** — Return a specific page in the comment listing. Page numbering is 1-based.

***

## Return format
An array with the following keys and values:

- **media_type** — The type of object the comment belongs to (for blog comments this will be "blog_post").
- **current_page** — Number of the page that is returned.
- **total_pages** — Total number of pages in this feature's stream.
- **total_items** — Total number of items in this feature's stream.
- **comments** — An array of Comment objects in full format.

***

## Errors

- **404 Not Found** — The requested blog post does not exist or was deleted.

***

## Example
**Request**

    https://api.500px.com/v1/blogs/30/comments&consumer_key=YOUR-CONSUMER-KEY

**Return**

    {
      "media_type":"blog_post",
      "current_page":1,
      "total_pages":1,
      "total_items":1,
      "comments": [
        {
          body":"Looks like you had a nice vacation.",
          "created_at":"2011-10-17T18:23:49Z",
          "id":515,
          "to_whom_user_id":76,
          "user_id":76,
          "user":{
            city":null,
            "country":null,
            "firstname":"Tye",
            "id":76,
            "lastname":"Shavik",
            "upgrade_status":0,
            "username":"TyeShavik",
            "fullname":"Tye Shavik",
            "userpic_url":"/graphics/userpic.png" }
        }
      ]
    }