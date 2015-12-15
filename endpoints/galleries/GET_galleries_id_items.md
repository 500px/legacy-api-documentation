# Galleries Resources

    GET users/:user_id/galleries/:id/items

## Description

Returns a listing of twenty (up to one hundred) photos in the given gallery.

***

## Requires authentication
* A valid Consumer Key must be provided in **consumer_key** parameter.
* Alternatively, a valid **[OAuth][]** request with an authorized Access Token will be accepted.

***

## Parameters
- **only** — String name of the **[category][]** to return photos from. **Note:** Case sensitive, separate multiple values with a comma.
- **exclude** — String name of the **[category][]** to exclude photos by. **Note:** Case sensitive, separate multiple values with a comma.
- **sort** — Sort photos in the specified order.
    ###### Recognized values:
    - 'created_at' — Sort by time of upload.
    - 'rating' — Sort by rating.
    - 'highest_rating' — Sort by the highest rating the photo reached.
    - 'times_viewed' — Sort by view count.
    - 'votes_count' — Sort by number of likes.
    - 'comments_count' — Sort by number of comments.
    - 'taken_at' — Sort by the original date of the image extracted from metadata (might not be available for all images).
    - 'position' — Sort by the user's manually defined order. This is the default.

- **sort_direction** — Control the order of the sorting.  You can provide a **sort_direction** without providing a **sort**, in which case default sort will be used.
    ###### Recognized values:
    - 'asc' — Sort in ascending order (lowest or least-recent first).  This is the default.
    - 'desc' — Sort in descending order (highest or most-recent first).

- **page** — Return a specific page in the photo stream. Page numbering is 1-based.
- **rpp** — The number of results to return. Cannot be over 100, default 20.
- **image_size** — The photo size to be returned. It has to be an integer: 1 to 4. Also an array is accepted:
    ###### Example:
    - '&image_size=3'
    - '&image_size[]=3&image_size[]=4'

- **include_store** — If set to 1, returns market infomation about the photo.
    ###### Returned values:
    - 'store_download' — Boolean value if the picture is avaliable for HD Download purchase.
    - 'store_print' — Boolean value if the picture is avaliable for Canvas print purchase.
    - 'store_license' — Boolean value if the picture is avaliable for Prime purchase.
    - 'store_width' — Integer value indicating the store size of the photo.
    - 'store_height' — Integer value indicating the store size of the photo.

- **include_states** — If set to 1, returns state of the photo for the currently logged in user and authenticated request.
    ###### Returned values:
    - 'liked' — Boolean value whether the current user has liked this photo
    - 'favorited' — Boolean value whether the current user has favorited this photo
    - 'purchased' — Boolean value whether the current user has bought this photo

- **include_tags** (or **tags**) — If set to 1, returns an array of tags for the photo.

- **include_missing** — If set to 1, returns ids of photos that have been deleted, made private or the owner of the photo is deactivated.

- **include_geo** — If set to 1, returns location information about the photo.

- **include_licensing** — If set to 1, returns licensing information for the photo.

***

## Return format
A JSON object with the following keys and values:

- **filters** — Additional filters that were used:
    - 'category' — The ID of the **[category][]** that photos were filtered by;
    - 'exclude' - The ID of the **[category][]** that photos were excluded;
- **current_page** — Number of the page that is returned.
- **total_pages** — Total number of pages in this feature's stream.
- **total_items** — Total number of items in this feature's stream.
- **photos** — An array of Photo objects in **[short format][]**.

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **400 Bad Request** — The request issued is missing one or more of the required parameters or contains parameters in an invalid form.
- **404 Not Found** — The gallery you are requesting does not exist, or is private (and you are not its owner)

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[category]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#categories
[short format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#short-format
