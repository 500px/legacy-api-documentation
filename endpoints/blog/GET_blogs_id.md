# Blog Resources

    GET blogs/:id

## Description
Returns detailed information of a single blog post.

***

## Requires authentication

- A valid **Consumer Key** must be provided in **consumer_key** parameter.
- Alternatively, a valid **OAuth** request with an authorized Access Token will be accepted.

***

## Parameters

- **id** _(required)_ - Return information for the specific blog post ID. Can be provided either as blogs/:id or in the query string

***

## Return format
A JSON object containing a BlogPost object in full format.

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **403 Forbidden** — The blog post was either deleted or belongs to a deactivated user.
- **404 Not Found** — Blog post with the specified ID does not exist.

***

## Example
**Request**

    https://api.500px.com/v1/photos/1195521?comments=1&comments_page=3&consumer_key=YOUR-CONSUMER-KEY

**Return**

    {
      "body":"I went on vacation and took some photos...",
      "id":23,
      "latitude":'19.773591894356727',
      "longitude":'-154.8828125',
      "tags":'hawaii,vacation',
      "title":"Vacation Photos",
      "user":{
        "city":"",
        "country":"",
        "firstname":"Ian",
        "id":35,
        "lastname":"Sobolev",
        "upgrade_status":1,
        "username":"iansobolev",
        "fullname":"Ian Sobolev",
        "userpic_url":"http://s3.amazonaws.com/devavatars.500px.net/35.jpg"
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