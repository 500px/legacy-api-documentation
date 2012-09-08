# User Resources

    GET users/:id/friends

## Description
Returns a list of friends for the specified user.

***

## Requires authentication
* A valid Consumer Key must be provided in **consumer_key** parameter.
* Alternatively, a valid **[OAuth][]** request with an authorized Access Token will be accepted.

***

## Parameters

- **id** _(required)_ — Return information for the specified user ID
- **page** — Return the specified page of the resource. Page numbering is 1-based.
- **rpp** — Results Per Page, default 20, max 100.

***

## Return format
A JSON array with keys:

- **friends_count** — Total number of friends.
- **friends_pages** — The total number of pages available in this resource.
- **page** — Number of the page currently being returned.
- **friends** — An indexed array of User objects in **[short format][]**.

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **403 Forbidden** — The user requested has been disabled.
- **404 Not Found** — User does not exist in our database.

***

## Example
**Request**

    GET v1/users/173/friends

**Return** __shortened for example purpose__
```
{
  "friends_count": 37,
  "friends_pages": 2,
  "page": 1,
  "friends": [
    {
      "id": 457180,
      "username": "mgcirillo",
      "firstname": "Mike",
      "lastname": "Cirillo",
      "city": "Toronto",
      "country": "Canada",
      "fullname": "Mike Cirillo",
      "userpic_url": "http://acdn.500px.net/457180/bcbec7f69f5275d5ecf189bc05f07ab2560b2b22/1.jpg?0",
      "upgrade_status": 2
    },
    {
      "id": 48920,
      "username": "EvgueniTchebotarev",
      "firstname": "Evgueni",
      "lastname": "Tchebotarev",
      "city": "Toronto",
      "country": "Canada",
      "fullname": "Evgueni Tchebotarev",
      "userpic_url": "http://acdn.500px.net/48920.jpg",
      "upgrade_status": 0
    },
    {
      "id": 12150,
      "username": "MaksimPo",
      "firstname": "Maksim",
      "lastname": "p.",
      "city": "tallinn",
      "country": "estonia",
      "fullname": "Maksim p.",
      "userpic_url": "http://external.ak.fbcdn.net/safe_image.php?d=47fb0c08b05d512cf1afaa8866774b39&url=http%3A%2F%2Fprofile.ak.fbcdn.net%2Fhprofile-ak-snc4%2F41765_100000921361830_4251_n.jpg&logo&v=5",
      "upgrade_status": 0
    }
  ]
}
```

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[short format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#short-format-1