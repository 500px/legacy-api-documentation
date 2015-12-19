# Photo Resources

    GET photos/search

## Description
Returns a listing of twenty (up to one hundred) photos from search results for a specified tag, keyword, or location.

***

## Requires authentication
* A valid Consumer Key must be provided in **consumer_key** parameter.
* Alternatively, a valid **[OAuth][]** request with an authorized Access Token will be accepted.

***

## Parameters
Either of parameters **term**, **tag**, or **geo** is required.

- **term** — A keyword to search for.
- **tag** — A complete tag string to search for.
- **geo** — A geo-location point of the format `latitude,longitude,radius<units>`. Acceptable `units` are `km` or `mi`.
- **only** — String name of the **[category][]** to return photos from. **Note:** Multiple categories may be given, separated by commas, e.g. `Fashion,Black and White`
- **exclude** — String name of the **[category][]** to exclude from the results. **Note:** Multiple categories may be given, separated by commas, e.g. `People,Nude`
- **page** — Return a specific page. Page numbering is 1-based.
- **rpp** — The number of results to return. Can not be over 100, default 20.
- **tags** — Returns an array of tags for each photo.
- **image_size** — The photo size(s) to be returned. See the documentation on **[photo sizes][]**.
- **license_type** -- Restrict the results to one or more **[license types][]**.  Multiple types can be separated with a comma: `license_type=1,4`.
- **sort** — Sort photos in the specified order. The following values are recognized:
  - **_score** — Sort by query score, best match first.
  - **created_at** — Default: sort by time of upload, most recent first.
  - **rating** — Sort by current rating, highest rated first.
  - **highest_rating** — Sort by highest rating achieved, highest rated first.
  - **times_viewed** — Sort by the number of views, most viewed first.
  - **votes_count** – Sort by the number of votes, most voted on first.
  - **comments_count** — Sort by the number of comments, most commented first.
  - **taken_at** — Sort by the original date of the image extracted from metadata, most recent first (might not be available for all images).

## Return format
An array with the following keys and values:

- **current_page** — Number of the page that is returned.
- **total_pages** — Total number of pages in this feature's stream.
- **total_items** — Total number of items in this feature's stream.
- **photos** — An array of Photo objects in **[short format][]**. The objects will also include `latitude` and `longitude` attributes if the results are based on the geo-location search.

***

## Errors
- **400 Bad Request** — The request issued is missing one or more of the required parameters or contains parameters in an invalid form.


***

## Example
**Request**

  GET v1/photos/search?term=bike

## Return __shortened for example purpose__
``` json
{
  "current_page": 1,
  "total_pages": 50,
  "total_items": 8263,
  "photos": [
    {
      "id": 4930535,
      "name": "Bike",
      "description": "",
      "times_viewed": 28,
      "rating": 27,
      "created_at": "2012-02-10T00:39:03-05:00",
      "category": 21,
      "privacy": false,
      "width": 2500,
      "height": 1883,
      "votes_count": 1,
      "comments_count": 0,
      "nsfw": false,
      "image_url": "http://pcdn.500px.net/4930535/140c1f84fb63be76884b2b60350c6b6d75c2433f/2.jpg",
      "user": {
        "id": 171927,
        "username": "MarkBrunner",
        "firstname": "mark",
        "lastname": "Brunner",
        "city": "Haslett",
        "country": "united States",
        "fullname": "mark Brunner",
        "userpic_url": "http://acdn.500px.net/171927.jpg",
        "upgrade_status": 0
      }
    },
    {
      "id": 4930206,
      "name": "Rain",
      "description": "",
      "times_viewed": 1,
      "rating": 59.7,
      "created_at": "2012-02-10T00:04:09-05:00",
      "category": 21,
      "privacy": false,
      "width": 4542,
      "height": 3042,
      "votes_count": 1,
      "comments_count": 1,
      "nsfw": false,
      "image_url": "http://pcdn.500px.net/4930206/bedeed09e5a15014c558aa59de29bd40c4212811/2.jpg",
      "user": {
        "id": 578359,
        "username": "mikecruzphotography",
        "firstname": "Mike",
        "lastname": "Cruz",
        "city": "",
        "country": "Singapore",
        "fullname": "Mike Cruz",
        "userpic_url": "http://acdn.500px.net/578359/600796b98145b21fb3b35bc7c5ce001db1b4ea4a/1.jpg?127",
        "upgrade_status": 0
      }
    }
  ]
}
```

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[short format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#short-format-1
[category]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#categories
[license types]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#license-types
[photo sizes]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#image-urls-and-image-sizes
