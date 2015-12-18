# Galleries Resources

    POST users/:user_id/galleries

## Description

Creates a new, empty gallery owned by the given user.

***

## Requires authentication
 **[OAuth][]**

## Parameters

- **name** _(required)_ — Name for the gallery.
- **description** — Description of the gallery.  Default is blank.
- **subtitle** — Subtitle of the gallery.  Default is blank.
- **privacy** — If 1, the gallery is marked private, otherwise it is public.  Default is public.
- **kind** _(required)_ - Must be one of the following **[gallery kinds][]**.
- **custom_path** - A slug that the gallery will be accessible through.  Needs to be unique to the user.

***

## Return format
A JSON object containing **status** and **gallery** with the new Gallery object in **[full format][]**.

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **400 Bad Request** — The request issued is missing one or more of the required parameters or contains parameters in an invalid form.
- **403 Forbidden** — You are not the user who will own the new gallery.


[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[full format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#full-format-3
[gallery kinds]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#gallery-kinds
