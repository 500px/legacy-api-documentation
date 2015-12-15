# Galleries Resources

    PUT users/:user_id/galleries/:id

## Description

Updates the metadata for the given gallery.

***

## Requires authentication
 **[OAuth][]**

## Parameters

- **name** — Sets the title for the gallery.
- **description** — Description of the gallery.
- **subtitle** — Updates the subtitle of the gallery.
- **privacy** — If 1, the gallery is marked private, otherwise it is public.
- **cover_photo_id** — Updates the gallery's cover photo, must be
  a pre-existing item in the gallery with valid photo and user.
- **custom_path** - A slug that the gallery will be accessible through.  Needs to be unique to the user.

If a field is not provided, its current value is retained.

***

## Return format
A JSON object with the key **gallery** that contains the updated Gallery object in **[full format][]**.

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **400 Bad Request** — The request issued is missing one or more of the required parameters or contains parameters in an invalid form.
- **404 Not Found** — Photo with the specified ID does not exist.
- **403 Forbidden** — You are not the owner of the gallery.


[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[full format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#full-format-3
