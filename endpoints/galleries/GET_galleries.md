# Galleries Resources

    GET users/:user_id/galleries

## Description

Returns a listing of twenty (up to one hundred) galleries for the given user.

***

## Requires authentication
* A valid Consumer Key must be provided in the **consumer_key** parameter.
* Alternatively, a valid **[OAuth][]** request with an authorized Access Token will be accepted.

***

## Parameters
- **sort** — Sort galleries in the specified order.
    ###### Recognized values:
    - 'created_at' — Sort by time of creation
    - 'updated_at' — Sort by time of last change (photo added or removed).  This is the default.
    - 'last_added_to_at' — Sort by time last photo was added to the gallery.
    - 'rating' — Sort by gallery rating
    - 'position' — Sort by gallery position (as defined by the user)

- **sort_direction** — Control the order of the sorting.  You can provide a **sort_direction** without providing a **sort**, in which case the default sort is used.
    ###### Recognized values:
    - 'asc' — Sort in ascending order (lowest or least-recent first).  This is the default.
    - 'desc' — Sort in descending order (highest or most-recent first).

- **privacy** — The privacy level of the galleries to return.
    ###### Recognized values:
    - 'private' — Only include the user's private galleries in the response.  Only available for the current user.
    - 'public' — Only include the user's public galleries in the response.  This is the default.
    - 'both' - Include both the public and private galleries in the response.  Only available for the current user.

- **kinds** — A comma-separated list of **[gallery kinds][]**. Default is to return all galleries.
- **page** — Return a specific page in the photo stream. Page numbering is 1-based.
- **rpp** — The number of results to return. Cannot be over 100, default 20.

***

## Return format
A JSON object with the following keys and values:

- **filters** — Additional filters that were used:
    - 'privacy' — The value of the privacy filter used;
    - 'kinds' — The value of the **[gallery kinds][]** requested;
- **current_page** — Number of the page that is returned.
- **total_pages** — Total number of pages in this feature's stream.
- **total_items** — Total number of items in this feature's stream.
- **galleries** — An array of Gallery objects in **[short format][]**.

***

## Errors
- **400 Bad Request** — The request issued is missing one or more of the required parameters or contains parameters in an invalid form.

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[short format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#short-format-3
[gallery kinds]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#gallery-kinds
