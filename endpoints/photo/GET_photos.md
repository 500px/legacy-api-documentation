# Photo Resources

    GET photos/:id

## Description
Returns a listing of twenty (up to one hundred) photos for a specified **[photo stream][]**.

***

## Requires authentication
* A valid Consumer Key must be provided in **consumer_key** parameter.
* Alternatively, a valid **[OAuth][]** request with an authorized Access Token will be accepted.

***

## Parameters
- **feature** _(required)_ — Photo stream to be retrieved. Default _fresh_today_. Recognized values:
    ###### Global features
    - 'popular' — Return photos in Popular
    - 'upcoming' — Return photos in Upcoming
    - 'editors' — Return photos in Editors' Choice
    - 'fresh_today' — Return photos in Fresh Today
    - 'fresh_yesterday' — Return photos in Fresh Yesterday
    - 'fresh_week' — Return photos in Fresh This Week
    - 'user' - Return photos of a user, additional parameter 'user_id' or 'username' is required 

    ###### Per-user features
    All per-user streams require a **user_id** or **username** parameter
    
    - 'user' — Return photos by a specific user, as displayed on **[http://500px.com/:username][]**
    - 'user_friends' — Return photos by users the specified user is following, as displayed on **[http://500px.com/:username/following][]**
    - 'user_favorites' — Return photos added as favorites by the specified user, as displayed on **[http://500px.com/:username/favorites][]**

- **only** — String name of the **[category][]** to return photos from.
- **exclude** — String name of the **[category][]** to exclude photos by.
- **sort** — Sort photos in the specified order.
    ###### Recognized values:
    **Note:** For global features default sorting will take precedence. (Consider a SQL query "ORDER BY rating DESC, times_viewed DESC" for feature popular)
    - 'created_at' — Sort by time of upload, most recent first (note: for a request of a user's favourite photos, this sort order will retrieve the list in the order that the user added photos to their favourites list, newest first.)
    - 'rating' — Sort by rating, highest rated first
    - 'times_viewed' — Sort by view count, most viewed first
    - 'votes_count' — Sort by votes count, most voted first
    - 'favorites_count' — Sort by favorites count, most favorited first
    - 'comments_count' — Sort by comments count, most commented first
    - 'taken_at' — Sort by the original date of the image extracted from metadata, most recent first (might not be available for all images)

- **page** — Return a specific page in the photo stream. Page numbering is 1-based.
- **rpp** — The number of results to return. Can not be over 100, default 20.
- **image_size** — The photo size to be returned. It has to be an integer: 1 to 4. Also an array is accepted:
    ###### Example:
    - '&image_size=3'
    - '&image_size[]=3?image_size[]=4'


- **include_store** — Returns market infomation about the photo.
    ###### Returned values:
    - 'store_download' — Boolean value if the picture is avaliable for HD Download purchase.
    - 'store_print' — Boolean value if the picture is avaliable for Canvas print purchase.

- **include_states** — Returns state of the photo for the currently logged in user and authenticated request.
    ###### Returned values:
    - 'voted' — Boolean value whether the current user has voted for this photo
    - 'favorited' — Boolean value whether the current user has favorited this photo
    - 'purchased' — Boolean value whether the current user has bought this photo

***

## Return format
An array with the following keys and values:

- **feature** — Feature that is being returned.
- **filters** — Additional filters that were used:
    - 'category' — The ID of the **[category][]** that photos were filtered by;
    - 'user_id' — The ID of the user specified by 'user_id' or 'username' parameters;
    - 'friends_ids' — IDs of users the user specified is following;
- **current_page** — Number of the page that is returned.
- **total_pages** — Total number of pages in this feature's stream.
- **total_items** — Total number of items in this feature's stream.
- **photos** — An array of Photo objects in **[short format][]**.

***

## Errors
None

***

## Example
**Request**
    
    https://api.500px.com/v1/photos?feature=popular

**Return** __shortened for example purpose__
``` json
{
  "feature": "popular",
  "filters": {
      "category": false,
      "exclude": false
  },
  "current_page": 1,
  "total_pages": 250,
  "total_items": 5000,
  "photos": [
    {
      "id": 4910421,
      "name": "Orange or lemon",
      "description": "",
      "times_viewed": 709,
      "rating": 97.4,
      "created_at": "2012-02-09T02:27:16-05:00",
      "category": 0,
      "privacy": false,
      "width": 472,
      "height": 709,
      "votes_count": 88,
      "favorites_count": 26,
      "comments_count": 58,
      "nsfw": false,
      "image_url": "http://pcdn.500px.net/4910421/c4a10b46e857e33ed2df35749858a7e45690dae7/2.jpg",
      "user": {
        "id": 386047,
        "username": "Lluisdeharo",
        "firstname": "Lluis ",
        "lastname": "de Haro Sanchez",
        "city": "Sabadell",
        "country": "Catalunya",
        "fullname": "Lluis de Haro Sanchez",
        "userpic_url": "http://acdn.500px.net/386047/f76ed05530afec6d1d0bd985b98a91ce0ce49049/1.jpg?0",
        "upgrade_status": 0
      }
    },
    {
      "id": 4905955,
      "name": "R E S I G N E D",
      "description": "From the past of Tagus River, we have History and memories, some of them abandoned and disclaimed in their margins ...",
      "times_viewed": 842,
      "rating": 97.4,
      "created_at": "2012-02-08T19:00:13-05:00",
      "category": 0,
      "privacy": false,
      "width": 750,
      "height": 500,
      "votes_count": 69,
      "favorites_count": 34,
      "comments_count": 29,
      "nsfw": false,
      "image_url": "http://pcdn.500px.net/4905955/7e1a6be3d8319b3b7357c6390289b20c16a26111/2.jpg",
      "user": {
        "id": 350662,
        "username": "cresendephotography",
        "firstname": "Carlos",
        "lastname": "Resende",
        "city": "Forte da Casa",
        "country": "Portugal",
        "fullname": "Carlos Resende",
        "userpic_url": "http://acdn.500px.net/350662.jpg",
        "upgrade_status": 0
      }
    }
  ]
}
```

[photo stream]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#500px-photo-terms
[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[http://500px.com/:username]: http://500px.com/iansobolev
[http://500px.com/:username/following]: http://500px.com/iansobolev/following
[http://500px.com/:username/favorites]: http://500px.com/iansobolev/favorites
[category]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#categories
[short format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#short-format-1