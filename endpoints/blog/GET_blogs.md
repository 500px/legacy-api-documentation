# Blog Resources

    GET blogs

## Description
Returns a listing of up to one hundred blog posts.

***

## Requires authentication

- A valid **Consumer Key** must be provided in **consumer_key** parameter.
- Alternatively, a valid **OAuth** request with an authorized Access Token will be accepted.

***

## Parameters

- **feature** (required) — Blog stream to be retrieved. Recognized values:
    ### Global features
    - **fresh** — Return recent blog posts made by any user.

    ### Per-user features
    All per-user streams require a user_id or username parameter:

    - **user** — Return blog posts by a specific user, as displayed on [http://500px.com/:username/blog][]

- **page** — Return a specific page in the blog listing. Page numbering is 1-based.
- **rpp** — The number of results to return. Can not be over 100, default 20.

[http://500px.com/:username/blog]: http://500px.com/iansobolev/blog



***

## Return format
An array with the following keys and values:

- **feature** — Feature that is being returned.
- **filters** — Additional filters that were used:
    - 'user_id' — The ID of the user specified by 'user_id' or 'username' parameters;
- **current_page** — Number of the page that is returned.
- **total_pages** — Total number of pages in this feature's stream.
- **total_items** — Total number of items in this feature's stream.
- **blog_posts** — An array of BlogPost objects in short format.

***

## Errors
None

***

## Example
**Request**

    https://api.500px.com/v1/blogs?feature=fresh&page=2&consumer_key=YOUR-CONSUMER-KEY

**Return**

    {
      feature":"fresh",
      "filters":{},
      "current_page":2,
      "total_pages":4,
      "total_items":17,
      "blog_posts": [
        {
          id":28,
          "title":"I Took Some Photos",
          "user": {
            city":"",
            "country":"",
            "firstname":"Ian",
            "id":35,
            "lastname":"Sobolev",
            "upgrade_status":1,
            "username":"iansobolev",
            "fullname":"Ian Sobolev",
            "userpic_url":"http://s3.amazonaws.com/devavatars.500px.net/35.jpg"
          }
        }, {
          id":28,
          "title":"My Photo Blog",
          "user": {
            city":"",
            "country":"",
            "firstname":"Tom",
            "id":35,
            "lastname":"Creighton",
            "upgrade_status":1,
            "username":"tomcreighton",
            "fullname":"Tom Creighton",
            "userpic_url":"http://s3.amazonaws.com/devavatars.500px.net/36.jpg"
          }
        }, {
          id":28,
          "title":"More Photos",
          "user": {
            city":"",
            "country":"",
            "firstname":"Ian",
            "id":35,
            "lastname":"Sobolev",
            "upgrade_status":1,
            "username":"iansobolev",
            "fullname":"Ian Sobolev",
            "userpic_url":"http://s3.amazonaws.com/devavatars.500px.net/35.jpg"
          }
        }
      ]
    }