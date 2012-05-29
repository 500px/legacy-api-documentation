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

    POST /v1/photos/112116/vote

**Body**

    vote=1

**Return**

    {
     "photo": {
      "aperture": "2.8", 
      "camera": "Nikon D200", 
      "category": 7, 
      "comments_count": 0, 
      "created_at": "2010-07-22T19:15:28Z", 
      "description": "", 
      "favorites_count": 0, 
      "focal_length": "50", 
      "id": 112116, 
      "image_url": "http://devphotos.500px.com/112116/faf4fcce33fe3e3e75b0cad1a7a0f420cb7b543a/4.jpg", 
      "iso": "100", 
      "latitude": null, 
      "lens": null, 
      "location": null, 
      "longitude": null, 
      "name": "***", 
      "rating": 29.9, 
      "shutter_speed": "1/125", 
      "status": 1, 
      "taken_at": null, 
      "times_viewed": 144, 
      "user": {
       "city": "Moscow", 
       "country": "Russian Federation", 
       "domain": null, 
       "firstname": "Arthur", 
       "fullname": "Arthur Kartashev", 
       "id": 2270, 
       "lastname": "Kartashev", 
       "username": "tch0rt", 
       "userpic_url": "http://devavatars.500px.net/2270.jpg"
      }, 
      "user_id": 2270, 
      "votes_count": 6
     }
    }

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[full format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#full-format