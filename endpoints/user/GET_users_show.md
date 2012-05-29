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

    https://api.500px.com/v1/users/show?username=freeatnet&consumer_key=YOUR-CONSUMER-KEY

**Return**

    {
    "user": {
      "about": "Your local web-developer guy. Casual photographer.", 
      "affection": 6, 
      "birthday": null, 
      "city": "Toronto", 
      "contacts": {
          "facebook": "769184274", 
          "twitter": "freeatnet", 
          "website": "freeatnet.com"
      }, 
      "country": "Canada", 
      "domain": "freeatnet.500px.com", 
      "firstname": "Arseniy", 
      "followers_count": 14, 
      "fotomoto_on": false, 
      "friends_count": 26, 
      "fullname": "Arseniy Ivanov", 
      "id": 3798, 
      "in_favorites_count": 2, 
      "lastname": "Ivanov", 
      "locale": null, 
      "photos_count": 3, 
      "registration_date": "2009-12-15T14:40:45Z", 
      "sex": 1, 
      "show_nude": false, 
      "state": "ON", 
      "upgrade_status": 2, 
      "username": "freeatnet", 
      "userpic_url": "http://s3.amazonaws.com/avatars.500px.net/3798.jpg"
    }
    }

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[full format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#full-format