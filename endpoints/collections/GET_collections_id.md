### DEPRECIATED

Please use the corresponding **[galleries endpoint][]**

***

# Collections Resources

    GET collections/:id

## Description
Returns a collection.

***

## Requires authentication
 **[OAuth][]**

***

## Parameters

- **image_size** - Numerical size of the image to link to, 1 being the smallest and 4 being the largest. Multiple image sizes may be specified as ```image_size[]=2&image_size[]=4```.

***

## Return format
A JSON object with **collections** — An indexed array of Collection objects in **[short format][]**.:

***

## Errors
None

***

## Example
**Request**

    GET v1/collections/52&image_size=3

**Return**
``` json
{
  "id": 52,
  "title": "models",
  "position": 0,
  "created_at": "2012-06-04T13:55:08-04:00",
  "path": "models",
  "kind": "portfolio",
  "photos": [
    {
      "id": 500,
      "name": "Maria | portrait 1",
      "rating": 0,
      "created_at": "2012-06-04T10:18:18-04:00",
      "category": 0,
      "image_url": "http://dpcdn.500px.net/500/1e38495dab54fbe8bcc3b7a3679ee8f52e34cc8f/4.jpg",
	  "images":[
	    {"size":3,
		 "url":"http://dpcdn.500px.org/500/9661dc2247a00f115456a3af08b804cb61d493cd/3.jpg?v=0",
		 "https_url":"https://gp1.wac.edgecastcdn.net/806614/photos/photos.500px.net/500/9661dc2247a00f115456a3af08b804cb61d493cd/3.jpg?v=0"}],
      "votes_count": 0,
      "position": 999
    },
    {
      "id": 499,
      "name": "Maria | portrait 2",
      "rating": 0,
      "created_at": "2012-06-04T10:18:12-04:00",
      "category": 0,
      "image_url": "http://dpcdn.500px.net/499/3a323000e7b9ca7676b01de3916543c479e636f0/4.jpg",
	  "images":[
	    {"size":3,
		 "url":"http://ppcdn.500px.org/499/573b00d542f811de627c4cbb0fb1c1c09b76e729/3.jpg?v=0",
		 "https_url":"https://gp1.wac.edgecastcdn.net/806614/photos/photos.500px.net/499/573b00d542f811de627c4cbb0fb1c1c09b76e729/3.jpg?v=0"}]
      "votes_count": 0,
      "position": 999
    }
  ]
}
```

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[short format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#short-format-1
[galleries endpoint]: https://github.com/500px/api-documentation/blob/master/endpoints/galleries/GET_galleries_id.md
