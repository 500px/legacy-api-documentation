# Photo Resources

    GET photos/search

## Description
Returns a listing of up to one hundred photos from search results for a specified tag or keyword.

***

## Requires authentication
* A valid Consumer Key must be provided in **consumer_key** parameter.
* Alternatively, a valid **[OAuth][]** request with an authorized Access Token will be accepted.

***

## Parameters
Either of parameters **term** or **tag** is required.

- **term** — A keyword to search for.
- **tag** — A complete tag string to search for.
- **page** — Return a specific page. Page numbering is 1-based.
- **rpp** — The number of results to return. Can not be over 100, default 20.

***

## Return format
An array with the following keys and values:

- **current_page** — Number of the page that is returned.
- **total_pages** — Total number of pages in this feature's stream.
- **total_items** — Total number of items in this feature's stream.
- **photos** — An array of Photo objects in **[short format][]**.

***

## Errors
None

***

## Example
None

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[short format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#short-format-1