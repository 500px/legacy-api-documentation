# Updating a Photo's Information

    PUT photos/:id

## Description

Allows the client application to update user-editable information on a photo. 

## Resource URL

    https://api.500px.com/v1/photos/:id

## Authentication

**Required;** [OAuth][]. The client application must use the OAuth access token issued for the owner of the photo to access this resouce.

## Parameters

The application must provide the ID of the photo to update in the URL of the request. The following parameters are recognized when included in the query string or POST body:

- **name**: Title of the photo, up to 255 characters in length.
- **description**: Text description of the photo, up to 65535 characters in length.
- **category**: Integer number of the category of the photo. See [category mapping][] for exact values.
- **tags**: Comma-separated list of tags applicable to this photo.
- **shutter_speed**: Shutter speed value for the photo, internally stored as string.
- **focal_length**: Focal length value for the photo, internally stored as string.
- **aperture**: Aperture value value for the photo, internally stored as string.
- **iso**: Integer ISO value for the photo.
- **camera**: Make and model of the camera used to take this photo.
- **lens**: Information about the lens used to take this photo.
- **latitude**: Latitude of the location this photo was taken at represented by a decimal number.
- **longitude**: Longitude of the location this photo was taken at represented by a decimal number.
- **nsfw**: Boolean value indicating that the photo may contain not-safe-for-work content or content not suitable for minors.
- **license_type**: Integer number of the license type chosen for this photo. See [license type mapping][] for exact values.
- **privacy**: Integer value indicating that the photo should be shown (`0`) or hidden (`1`) on the user's profile.
- **crop**: A hash containing keys `x`, `x2`, `y`, `y2` and representing coordinates within which the thumbnail must be cropped. The client application may skip this if the user does not wish to change photo thumbnail.

## Implementation details

With the exception of `privacy` and `crop`, a parameter missing from the request will be interpreted as the user wishing to reset the value of the field to its default value. The application must send parameters with their existing values to ensure the data is preserved.

## Return format

A JSON object containing key **photo**, where **photo** is a Photo object in **[full format][]**.

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **401: Invalid OAuth request**: The request was refused because the OAuth signature is incorrect.
- **404: Photo with ID not found**: The photo ID provided is not known to the system.
- **404: Photo with ID has been deleted**: The photo has been deleted and can not be edited.
- **404: Photo with ID belongs to a deactivated user**: The photo belongs to a user that is no longer active and can not be edited.
- **400: Bad photo category**: An unrecognized photo category value has been provided.
- **400: Bad license type**: An unrecognized license type value has been provided.

***

## Example
**Request**

    PUT v1/photos/40840326?name=Toronto%20Sky%20vs%20City%20Hall&category=9&description=A%20panoramic%20shot%20taken%20with%20an%20Android%20camera%20on%20the%20evening%20of%20Jul%2019th.

**Return**

```
{
  "photo": {
    "id": 40840326,
    "user_id": 3798,
    "name": "Toronto Sky vs City Hall",
    "description": "A panoramic shot taken with an Android camera on the evening of Jul 19th.",
    "camera": "Nexus 4",
    "lens": null,
    "focal_length": null,
    "iso": "",
    "shutter_speed": null,
    "aperture": null,
    "times_viewed": 2,
    "rating": 0.0,
    "status": 1,
    "created_at": "2013-07-20T01:14:52-04:00",
    "category": 9,
    "location": null,
    "privacy": 0,
    "latitude": null,
    "longitude": null,
    "taken_at": "2013-07-19T20:59:26-04:00",
    "hi_res_uploaded": 0,
    "for_sale": false,
    "width": 3464,
    "height": 1608,
    "votes_count": 0,
    "favorites_count": 0,
    "comments_count": 0,
    "sales_count": 0,
    "for_sale_date": null,
    "highest_rating": 0.0,
    "highest_rating_date": null,
    "license_type": 0,
    "converted": 27,
    "image_url": "http://pcdn.500px.net/40840326/c828635b422c28af135f255f9a8323c16ea8340a/4.jpg",
    "user": {
      "id": 3798,
      "username": "freeatnet",
      "firstname": "Arseniy",
      "lastname": "Ivanov",
      "city": "Toronto",
      "country": "Canada",
      "fullname": "Arseniy Ivanov",
      "userpic_url": "http://acdn.500px.net/3798/25f3e0e4783a25983b79df3a3966461f3ca10d57/1.jpg?1",
      "upgrade_status": 2,
      "followers_count": 156,
      "affection": 90,
      "admin": 1
    }
  }
}
```

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[category mapping]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#categories
[license type mapping]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#license-types
[full format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#full-format
