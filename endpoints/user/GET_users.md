# User Resources

    GET users

## Description
Returns the profile information for the current user.

***

## Requires authentication
**[OAuth][]**

***

## Parameters
None

***

## Return format
Current user's profile information in **[full format][]**. 

Additional data:

- **upload_limit** — the number of photos the user may upload at this moment, integer.
- **upload_limit_expiry** — date and time of the beginning of the new upload limit cycle, datetime.

***

## Errors
None.

***

## Example
**Request (Using [OAuth][])**

    https://api.500px.com/v1/users

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