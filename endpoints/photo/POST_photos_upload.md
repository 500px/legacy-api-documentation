# Photo Resources

    POST photos/upload

## Description
This is a new photo upload endpoint. It is currently in beta.
Create a new photo on behalf of the user and upload a file.
**file** parameter is passed in multipart/form-data, other parameters are passed as query parametrs or multipart/form-data.

***

## Requires authentication
**[OAuth][]**

***

## Parameters
Essential information:

- **file** (required)  - Photo filename in JPG/JPEG, passed along with multipart/form-data.

- **name** — Title of the photo
- **description** — Description for the photo
- **category** — A numerical ID for the **[Category][]** of the photo

Optional attributes:

- **privacy** — If 1, the photo is marked as private and will not be visible on the user's profile on the website.  If 0, the photo is visible to the user's profile and is eligible to enter Fresh.  Default value is 1 (private).

Technical details of the photo: (this information may be overridden when the file is uploaded and parsed for EXIF and IPTC tags)

- **shutter_speed** — Shutter speed in seconds, represented by string containing a rational expression if the value is <1 sec., or a decimal value if the value is >1sec.
- **focal_length** — Focal length in millimetres, a string representing an integer value
- **aperture** — Aperture value
- **iso** — ISO value
- **camera** — Make and model of the camera. Note: Please make sure it contains sensible information (eg., does not contain camera's make or model twice)
- **lens** — Lens used to make this photo

Geographical information of the photo:

- **latitude** — Latitude, in decimal format
- **longitude** — Longitude, in decimal format


***

## Return format
Status code 200, along with a JSON array containing photo object in **[full format][]**.

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **422 Unprocessable Entity** — The system had trouble saving the record. You may retry again.

***

## Example
**Request**

    POST v1/photos/upload?name=Portrait&description=Studio%20portrait&privacy=0

```
----0246824681357ACXZabcxyz
Content-Type: image/jpeg; name="file"
Content-Transfer-Encoding: binary
Content-ID: <file>
Content-Disposition: form-data; name="file"; filename="photo.jpeg"
Content-Location: file


<BINARY DATA>
----0246824681357ACXZabcxyz--
```

**Return**
``` json
{
  "photo": {
    "id": 18379127,
    "user_id": 173,
    "name": "Portrait",
    "description": "Studio portrait test shot",
    "camera": "",
    "lens": "",
    "focal_length": "",
    "iso": "",
    "shutter_speed": "",
    "aperture": "",
    "times_viewed": 0,
    "rating": 0,
    "status": 8,
    "created_at": "2012-11-17T12:22:29-05:00",
    "category": 0,
    "location": "",
    "privacy": false,
    "latitude": null,
    "longitude": null,
    "taken_at": null,
    "hi_res_uploaded": 0,
    "for_sale": false,
    "width": null,
    "height": null,
    "votes_count": 0,
    "favorites_count": 0,
    "comments_count": 0,
    "nsfw": false,
    "sales_count": 0,
    "for_sale_date": null,
    "highest_rating": 0,
    "highest_rating_date": null,
    "license_type": 0,
    "image_url": "http://pcdn.500px.net/18379127/2c8e83ea1324d3eba051a69e6ec3b76601594d76/4.jpg",
    "images": [
      {
        "size": 4,
        "url": "http://pcdn.500px.net/18379127/2c8e83ea1324d3eba051a69e6ec3b76601594d76/4.jpg"
      }
    ],
    "store_download": false,
    "store_print": false,
    "voted": false,
    "favorited": false,
    "purchased": false,
    "user": {
      "id": 173,
      "username": "vovko",
      "firstname": "Vova",
      "lastname": "Drižepolov",
      "city": "Toronto",
      "country": "Canada",
      "fullname": "Vova Drižepolov",
      "userpic_url": "http://acdn.500px.net/173/18f6b5c24b2fce5ed5c01160a2ca96f0fb7a308c/1.jpg?17",
      "upgrade_status": 2,
      "followers_count": 39,
      "admin": 1
    }
  },
  "comments": []
}
```

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[Category]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#categories
[full format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#full-format
