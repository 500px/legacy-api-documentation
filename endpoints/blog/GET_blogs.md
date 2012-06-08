# Blog Resources

    GET blogs

## Description
Returns a listing of five recent stories (maximum 100 per page).

***

## Requires authentication
* A valid Consumer Key must be provided in **consumer_key** parameter.
* Alternatively, a valid **[OAuth][]** request with an authorized Access Token will be accepted.

***

## Parameters
- **feature** (required) — **[Story stream][]** to be retrieved. Default _fresh_. Recognized values:
    ### Global features
    - **fresh** — Return recent stories made by any user.

    ### Per-user features
    All per-user streams require a **user_id** or **username** parameter:

    - **user** — Return stories by a specific user, as displayed on **[http://500px.com/:username/stories][]**

- **page** — Return a specific page in the story listing. Page numbering is 1-based.
- **rpp** — The number of results to return. Can not be over 100, default 5.

***

## Return format
An array with the following keys and values:

- **feature** — **[Feature][]** that is being returned.
- **filters** — Additional filters that could be used:
    - 'user_id' — The ID of the user specified by 'user_id' or 'username' parameters;
- **current_page** — Number of the page that is returned.
- **total_pages** — Total number of pages in this feature's stream.
- **total_items** — Total number of items in this feature's stream.
- **blog_posts** — An array of Story objects in **[short format][]**.

***

## Errors
None

***

## Example
**Request**

    GET v1/blogs

**Return**
``` json
{
  feature":"fresh",
  "filters":{ },
  "current_page":1,
  "total_pages":105698,
  "total_items":528491,
  "blog_posts": [
    {
      "id": 528,
      "title": "On the Top of the NYC — Part II",
      "created_at": "2012-04-02T22:39:51-04:00",
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
      }
    }, 
    {
      id":491,
      "title": "On the Top of the NYC — Part I",
      "created_at": "2012-04-02T22:37:26-04:00",
      "user": {
      "id": 1,
      "username": "tchebotarev",
      "firstname": "Evgeny",
      "lastname": "Tchebotarev",
      "city": "Toronto",
      "country": "Canada",
      "fullname": "Evgeny Tchebotarev",
      "userpic_url": "http://acdn.500px."net/1/34059c97bf3c79f4923cd083756e6a8d726fa956/1.jpg?64",
      upgrade_status: 2
      }
      }
    }
  ]
}
```

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[Story stream]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#500px-photo-terms
[Feature]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#500px-photo-terms
[http://500px.com/:username/blog]: http://500px.com/tchebotarev/stories
[short format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#short-format-1