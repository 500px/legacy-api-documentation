# Galleries Resources

    PUT users/:user_id/galleries/:id/items

## Description

Adds, removes, or updates the order of items in the gallery.

***


## Requires authentication
**[OAuth][]**

***

## Parameters
The input to this method should be a JSON body with these fields:
- **add** — An optional hash directing that photos be inserted (or moved), in the following format:
  - **after** - If present, the items will be inserted after the described item.  The **after** option is a hash in the following format:
    - **id** - The ID of the photo to insert the items after.  If **id** is **null**, the photos are inserted at the beginning of the gallery.
  - **before** - If present, the items will be inserted before the described item.  The **before** option is a hash in the following format:
    - **id** - The ID of the photo to insert the items before.  If **id** is **null**, the photos are inserted at the end of the gallery.
  - **photos** - An array of Photo IDs to insert.
- **remove** — Am optional hash directing that photos be removed, in the following format:
  - **photos** - An array of Photo IDs to remove.

You cannot specify both **before** and **after** in a single request.  If the ID of the photo in a **before** or **after** does not exist in the gallery, an error is returned.  If neither **before** nor **after** are provided, the photos are inserted at the beginning of the gallery.

You can provided an **add** or a **remove** directive, or both.  If both directives are provided, the remove directive is performed first, so if a photo's ID appears in both directives, it will end up being present in the gallery after the operation completes.

You can provide photos in the **add** directive that are already present in the gallery.  The result of doing this will be to reorder the gallery so that the photos are removed from their current position (as if they had been included in the **remove** directive) and then added at the new position.

It is an error to provide a photo as both a **before** or **after** and as a photo to insert.

***

## Return format

An object mapping photo IDs to the operation performed ("added" or "removed"), see example.

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **400 Bad Request** — The request issued is missing one or more of the required parameters or contains parameters in an invalid form.
- **403 Forbidden** — The gallery is not owned by you.
- **403 Forbidden** — The photo was either deleted, is private, or belongs to a deactivated user.
- **404 Not Found** — The gallery you are requesting does not exist.
- **404 Not Found** — A photo you tried to add does not exist.

## Example
**Request**

    PUT v1/users/23/galleries/4/items

``` json
{
  "add": {
    "after": { "id": 5 },
    "photos": [ 1, 2, 3 ]
  },
  "remove": {
    "photos": [ 1, 4, 5 ]
  }
}
```

**Return**
``` json
{
  "1": { "result": "added" },
  "2": { "result": "added" },
  "3": { "error": "Not found", "status": 404 },
  "4": { "result": "removed" },
  "5": { "result": "removed" }
}
```

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[category]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#categories
