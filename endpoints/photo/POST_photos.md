# Photo Resources

    POST photos

## Description
Create a new photo on behalf of the user, and receive an **[upload key][]** in exchange.

***

## Requires authentication
**[OAuth][]**

***

## Parameters
Essential information:

- **name** — Title of the photo
- **description** — Description for the photo
- **category** — A numerical ID for the **[Category][]** of the photo

Technical details of the photo: (this information may be overridden when the file is uploaded and parsed for EXIF and IPTC tags)

- **shutter_speed** — Shutter speed in seconds, represented by string containing a rational expression if the value is <1 sec., or a decimal value if the value is >1sec.
- **focal_length** — Focal length in millimetres, a string representing an integer value
- **aperture** — Aperture value
- **iso** — ISO value
- **camera** — Make and model of the camera. Note: Please make sure it contains sensible information (eg., does not contain camera's make or model twice)
- **lens** — Lens used to make this photo
- **auto_activate** - Set this to 'true' if the photo should be automatically marked as active as soon as it's uploaded. It this parmeter is not included, the photo will not be automatically marked "active" after upload. 

### Geographical information of the photo:

- **latitude** — Latitude, in decimal format
- **longitude** — Longitude, in decimal format

### Optional attributes:

- **tags** — Comma-separated list of tags to apply to the photo.
- **privacy** — Whether to hide the photo from the user profile on the website. Otherwise, the photo is only available for use in Collections/Portfolio. Recognized values: 1 for private, 0 for public.

***

## Return format
Status code 200, along with a JSON array containing photo and 'upload_key' keys, where value of photo is an object representing the Photo information in **[short format][]**, and **['upload_key'](https://github.com/500px/api-documentation/blob/master/authentication/upload_key.md)** is the token to be used by the client to upload the file.


***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **422 Unprocessable Entity** — The system had trouble saving the record. You may retry again.

***

## Example
**Request**

    POST v1/photos?name=Hello&description=World&tags=some,useful,tags


**Return**
``` json
{
  "upload_key": "89653832030e7d26daf3a43fc2ccd501",
  "photo": {
    "id": 10000277,
    "user_id": 173,
    "name": "Hello",
    "description": "World",
    "camera": null,
    "lens": null,
    "focal_length": null,
    "iso": null,
    "shutter_speed": null,
    "aperture": null,
    "times_viewed": 0,
    "rating": null,
    "status": 0,
    "created_at": "2012-06-08T13:17:14-04:00",
    "category": 0,
    "location": null,
    "privacy": false,
    "latitude": null,
    "longitude": null,
    "taken_at": null,
    "hi_res_uploaded": 0,
    "for_sale": false,
    "width": null,
    "height": null,
    "votes_count": 0,
    "comments_count": 0,
    "nsfw": false,
    "sales_count": 0,
    "for_sale_date": null,
    "highest_rating": 0,
    "highest_rating_date": null
  }
}
```

[upload key]: https://github.com/500px/api-documentation/blob/master/authentication/upload_key.md
[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[Category]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#categories
[short format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#short-format-1
