# User Resources

    GET users/show

## Description
Returns the profile information for a specified user.

***

## Requires authentication
* A valid Consumer Key must be provided in **consumer_key** parameter.
* Alternatively, a valid **[OAuth][]** request with an authorized Access Token will be accepted.

***

## Parameters
(required) One of the unique user identifiers:

- **id** — Return information for the specified user ID. Can be provided either as users/:id or in the query string
- **username** — Return information for the user with the specified username.
- **email** — Return information for the user with the specified email address.

***

## Return format
User profile information in **[full format][]**.

Additional data:
- **following** — (OAuth only) whether the currently authenticated user is following the user specified by the identifier, boolean.

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error. Some results also include 'lookup_method' key specifying the parameter that was used for user lookup.

- **400 Bad Request** — Request did not contain one of the required parameters.
- **403 Forbidden** — The user requested has been disabled.
- **404 Not Found** — User does not exist in our database.

***

## Example
**Request (Using OAuth)**

    GET v1/users/show?username=freeatnet

**Return**
``` json
{
  "user": {
    "id": 3798,
    "username": "freeatnet",
    "firstname": "Arseniy",
    "lastname": "Ivanov",
    "birthday": null,
    "sex": 1,
    "city": "Toronto",
    "state": "Ontario",
    "country": "Canada",
    "registration_date": "2009-12-15T09:40:45-05:00",
    "about": "Your local web-developer guy. Casual photographer.",
    "domain": "freeatnet.500px.com",
    "fotomoto_on": true,
    "locale": "en",
    "show_nude": true,
    "fullname": "Arseniy Ivanov",
    "userpic_url": "/graphics/userpic.png",
    "upgrade_status": 2,
    "store_on": true,
    "contacts": {
      "website": "freeatnet.com",
      "twitter": "freeatnet_en",
      "facebookpage": "www.facebook.com/av.ivanov",
      "flickr": "freeatnet",
      "facebook": "769184274"
    },
    "equipment": {
      "camera": [
        "FUJIFILM FinePix S1000",
        "Canon EOS 50"
      ],
      "misc": [
        "Google Nexus S",
        "Apple Macbook Pro 15\""
      ]
    },
    "photos_count": 12,
    "affection": 20,
    "in_favorites_count": 4,
    "friends_count": 57,
    "followers_count": 77,
    "following": false
  }
}
```

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[full format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#full-format