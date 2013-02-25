# Blog Resources

    POST photos/:id/comments

## Description
Creates a new comment for the photo.

***

## Requires authentication
**[OAuth][]**

***

## Parameters
- **id** _(required)_ — The Photo ID to post comments for.
- **body** _(required)_ — Content of the comment.

***

## Return format
A JSON object with key "status" and value of 200, a key "message" with value of "Successfully added a comment.", and a key of "comment" including the comment model of the comment that was created.

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **400 Bad Request** — The body of the comment was not specified.
- **404 Not Found** — The photo was not found.

***

## Example
**Request**

    POST /v1/photos/8309863/comments

**Body**

    body=I+like+your+photo

**Return**
``` json
{
  "status":200,
  "message":"Successfully added a comment.",
  "error":"None",
  "comment": {
    "id": 83858343,
    "user_id": 198867,
    "to_whom_user_id": 347823,
    "body": "I like your photo",
    "created_at": "2013-02-25T17:35:26-05:00",
    "parent_id": null,
    "flagged": false,
    "rating": 0,
    "voted": false,
    "user": {
      "id": 198867,
      "username": "tye",
      "firstname": "Tye",
      "lastname": "Shavik",
      "city": "Toronto",
      "country": "Canada",
      "fullname": "Tye Shavik",
      "userpic_url": "http://acdn.500px.net/198867/7f5f29fd33e093062a30e2bf3a9e605c446ba960/1.jpg?29",
      "upgrade_status": 2,
      "followers_count": 36,
      "affection": 103,
      "admin": 1
    }
  }
}
```

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication