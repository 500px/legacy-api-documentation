### DEPRECATED

Please use the corresponding **[galleries endpoint][]**

***

# Collections Resources

    PUT collections/:id

## Description
Updates collection.

***

## Requires authentication
 **[OAuth][]**

## Parameters

Essential information:

- **id** _(required)_ — Collection ID.
- **title** — Title for the collection.
- **path** — Path where the collection will be accessible at 500px.com/user/sets/:path.
- **photo_ids** — Comma separated list of Photo ID values that are in this collection.
- **kind** — Change kind of the Collection. Recognized values: 1 - Portfolio Set, 2 - Profile Set.

Optional information:

- **position** — Position of the collection in the list of collections.

***

## Return format
A JSON object with **collections** — An indexed array of Collection objects in **[short format][]**.:

***

## Errors
None

***

## Example
**Request**

    PUT v1/collections/298603?title=Bikes&photo_ids=7651996

**Return**
``` json
{
  id: 298603,
  title: "Bikes",
  position: 0,
  created_at: "2012-06-07T13:15:26-04:00",
  path: "bikes_set",
  photos: [
    {
      id: 7651996,
      name: "bike",
      rating: 48.7,
      created_at: "2012-05-16T11:47:12-04:00",
      category: 26,
      image_url: "http://pcdn.500px.net/7651996/bfc9a0ae7cfaed28ebc947c2d4cd79e60a04934d/4.jpg",
      votes_count: 2,
      position: 999
    }
  ]
}
```

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[Feature]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#500px-photo-terms
[short format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#short-format-1
[galleries endpoint]: https://github.com/500px/api-documentation/blob/master/endpoints/galleries/PUT_galleries_id.md
