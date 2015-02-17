# Photo Resources

    GET photos/:id

## Description
Returns detailed information of a single photo.

***

## Requires authentication
* A valid Consumer Key must be provided in **consumer_key** parameter.
* Alternatively, a valid **[OAuth][]** request with an authorized Access Token will be accepted.

***

## Parameters

- **image_size** — Numerical size of the image to link to, 1 being the smallest and 4 being the largest.
- **comments** — Return comments to the photo in the response. Comments are returned in order of creation, 20 entries per page.
- **comments_page** — Return the specified page from the comments listing. Page numbers are 1-based.
- **tags** — Returns an array of tags for the photo.

***

## Return format
A JSON object containing keys **photo** and **comments**, where **photo** is a Photo object in **[full format][]** and comments is a list of **comments** associated with the photo in the following format:

- **id** — ID of the comment.
- **user_id** — The ID of the author of the comment.
- **to_whom_user_id** — Is always the ID of the author of the photo.
- **body** — Text of the comment.
- **created_at** - Creation of the comment
- **parent_id** - Parent comment in case this comment is a reply.
- **user** — Profile of the author of the comment in **[short format][]**.


### When requested with OAuth authentication, following keys will be included in the photo object:

- **voted** — Whether the current user has voted for this photo, boolean
- **favorited** — Whether the current user currently has this photo in favorites, boolean

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **403 Forbidden** — The photo was either deleted, belongs to a deactivated user.
- **404 Not Found** — Photo with the specified ID does not exist.


***

## Example
**Request**

    v1/photos/4928401?comments

**Return** __shortened for example purpose__
``` json
{
  "photo": {
    "id": 4928401,
    "user_id": 164677,
    "name": "Northern Fulmar",
    "description": "Photographed during a pelagic trip east of Cape Cod. This seabird species only comes to land to nest and stays on the open sea the rest of the year. They can drink saltwater and excrete the excess salt through a gland on top of the bill.",
    "camera": "Canon EOS-1D Mark IV",
    "lens": "",
    "focal_length": "700",
    "iso": "400",
    "shutter_speed": "1/2000",
    "aperture": "6.3",
    "times_viewed": 167,
    "rating": 97.1,
    "status": 1,
    "created_at": "2012-02-09T21:11:53-05:00",
    "category": 11,
    "location": null,
    "privacy": false,
    "latitude": 41.75968637583948,
    "longitude": -68.935546875,
    "taken_at": "2010-11-13T08:37:37-05:00",
    "hi_res_uploaded": 0,
    "for_sale": false,
    "width": 588,
    "height": 750,
    "votes_count": 36,
    "favorites_count": 18,
    "comments_count": 36,
    "nsfw": false,
    "sales_count": 0,
    "for_sale_date": null,
    "highest_rating": 97.1,
    "highest_rating_date": "2012-04-16T15:05:56-04:00",
    "image_url": "http://pcdn.500px.net/4928401/16666558d7ba410f50922f86f736888d8cfaf9bb/4.jpg",
    "images": {"size": 4, "url": "http://pcdn.500px.net/4928401/16666558d7ba410f50922f86f736888d8cfaf9bb/4.jpg"}
    "store_download": false,
    "store_print": false,
    "voted": false,
    "favorited": false,
    "purchased": false,
    "user": {
      "id": 164677,
      "username": "axelhildebrandt",
      "firstname": "Axel",
      "lastname": "Hildebrandt",
      "city": "Bethlehem",
      "country": "U.S.",
      "fullname": "Axel Hildebrandt",
      "userpic_url": "http://acdn.500px.net/164677.jpg",
      "upgrade_status": 0
    }
  },
  "comments": [
    {
      "id": 8482806,
      "user_id": 584607,
      "to_whom_user_id": 164677,
      "body": "Test",
      "created_at": "2012-04-16T15:07:54-04:00",
      "parent_id": null,
      "user": {
        "id": 584607,
        "username": "ArseniyIvanov",
        "firstname": "Arseniy",
        "lastname": "Ivanov",
        "fullname": "Arseniy Ivanov",
        "userpic_url": "http://acdn.500px.net/584607/36708ac62be191405639ad071f6bb772186c8679/1.jpg?103",
        "upgrade_status": 2
      }
    },
    {
      "id": 8477321,
      "user_id": 413718,
      "to_whom_user_id": 164677,
      "body": "Like!",
      "created_at": "2012-02-10T00:59:44-05:00",
      "parent_id": null,
      "user": {
        "id": 413718,
        "username": "SilviaSil",
        "firstname": "Silvia",
        "lastname": "S.",
        "fullname": "Silvia S.",
        "userpic_url": "/graphics/userpic.png",
        "upgrade_status": 0
      }
    }
  ]
}
```

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[short format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#short-format-1
[full format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#full-format
