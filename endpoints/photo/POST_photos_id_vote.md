# Photo Resources

    POST photos/:id/vote

## Description
Allows the user to vote for a photo.

***

## Requires authentication
**[OAuth][]**

***

## Parameters

- **id** _(required)_ — ID of the photo the vote is cast upon.
- **vote** _(required)_ — vote, values: '0' for 'dislike' or '1' for 'like'.

***

## Return format
A JSON object containing key **photo**, where **photo** is a Photo object in [full format][].

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **400 Bad Request** — The request issued is missing one or more of the required parameters or contains parameters in an invalid form.
- **403 Forbidden** — The vote has been rejected; common reasons are: current user is inactive, has not completed their profile, is trying to vote on their own photo, or has already voted for the photo.
- **404 Not Found** — Photo with the specified ID does not exist.

***

## Example
**Request**

    POST /v1/photos/112116/vote?vote=1

**Return**
``` json
{
  "photo": {
    "id": 4928402,
    "user_id": 69241,
    "name": "Guitar",
    "description": "",
    "camera": "Canon EOS rebel T2i",
    "lens": null,
    "focal_length": "35",
    "iso": "400",
    "shutter_speed": "1/20",
    "aperture": "2",
    "times_viewed": 4,
    "rating": 27,
    "status": 1,
    "created_at": "2012-02-09T21:12:01-05:00",
    "category": 5,
    "location": null,
    "privacy": false,
    "latitude": null,
    "longitude": null,
    "taken_at": "2012-02-09T14:50:29-05:00",
    "hi_res_uploaded": 0,
    "for_sale": false,
    "width": 5184,
    "height": 3456,
    "votes_count": 1,
    "comments_count": 0,
    "nsfw": false,
    "sales_count": 0,
    "for_sale_date": null,
    "highest_rating": 66.5287,
    "highest_rating_date": "2009-11-14T09:26:56-05:00",
    "image_url": "http://pcdn.500px.net/4928402/5868f8b7f020e4f7ce75fd8f1b66c6f75f53bd4f/4.jpg",
    "user": {
      "id": 69241,
      "username": "rileywiebe",
      "firstname": "Riley",
      "lastname": "Wiebe",
      "city": "Swift Current",
      "country": "Canada",
      "fullname": "Riley Wiebe",
      "userpic_url": "http://acdn.500px.net/69241.jpg",
      "upgrade_status": 0
    }
  }
}
```

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[full format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#full-format
