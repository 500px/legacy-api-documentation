# Photo Resources

    POST photos

## Description
Create a new photo on behalf of the user, and receive an upload token in exchange.

***

## Requires authentication
OAuth

***

## Parameters
Essential information:

- **name** — Title of the photo
- **description** — Description for the photo
- **category** — A numerical ID for the category of the photo

Technical details of the photo: (this information may be overridden when the file is uploaded and parsed for EXIF and IPTC tags)

- **shutter_speed** — Shutter speed in seconds, represented by string containing a rational expression if the value is <1 sec., or a decimal value if the value is >1sec.
- **focal_length** — Focal length in millimetres, a string representing an integer value
- **aperture** — Aperture value
- **iso** — ISO value
- **camera** — Make and model of the camera. Note: Please make sure it contains sensible information (eg., does not contain camera's make or model twice)
- **lens** — Lens used to make this photo

### Geographical information of the photo:

- **latitude** — Latitude, in decimal format
- **longitude** — Longitude, in decimal format

### Special attributes:

- **privacy** — Whether to hide the photo from the user profile on the website. Otherwise, the photo is only available for use in Collections/Portfolio. Recognized values: 1, 0.

***

## Return format
Status code 200, along with a JSON array containing photo and 'upload_key' keys, where value of photo is an object representing the Photo information in short format, and 'upload_key' is the token to be used by the client to upload the file.

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **422 Unprocessable Entity** — The system had trouble saving the record. You may retry again.

***

## Example
**Request**

    POST /v1/photos

**Body**

    name=Test+no.+1&description=Description+no.+1 

**Return**

    {
     "photo": {
      "aperture": null, 
      "camera": null, 
      "category": 0, 
      "created_at": "2011-08-17T22:32:37Z", 
      "description": null, 
      "focal_length": null, 
      "id": 1366581, 
      "iso": null, 
      "latitude": null, 
      "lens": null, 
      "location": null, 
      "longitude": null, 
      "name": "Description no. 1", 
      "rating": null, 
      "shutter_speed": null, 
      "status": 0, 
      "taken_at": null, 
      "times_viewed": 0, 
      "user_id": 3798
     }, 
     "upload_key": "1170cbb2fa4d75379e72c2e55a33d69c"
    }