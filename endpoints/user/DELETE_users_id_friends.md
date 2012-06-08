# User Resources

    DELETE users/:id/friends

## Description
Removes the user from the list of followers.

***

## Requires authentication
* A valid Consumer Key must be provided in **consumer_key** parameter.
* Alternatively, a valid **[OAuth][]** request with an authorized Access Token will be accepted.

***

## Parameters

- **id** _(required)_ — ID of the User to remove from the followers list.

***

## Return format
A JSON array with un-followed User object.

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **403 Forbidden** — The user requested has been disabled or not in followers list.
- **404 Not Found** — User does not exist in our database.

***

## Example
**Request**

    DELETE v1/users/827595/friends

**Return**
``` json
{
  user: {
    id: 827595,
    username: "voldemarpetruskauskus",
    firstname: "Voldemar",
    lastname: "Petruskauskus",
    birthday: null,
    sex: 0,
    city: "",
    state: "",
    country: "",
    registration_date: "2012-05-15T11:19:42-04:00",
    about: "Voldemar",
    domain: null,
    upgrade_status: 9,
    fotomoto_on: false,
    locale: "en",
    show_nude: false,
    store_on: false,
    contacts: { },
    equipment: { }
  }
}
```

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[short format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#short-format-1