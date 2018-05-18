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
- **show_personalized_categories** - checks if the user can see personalized photo categories, boolean.
- **gdpr_acceptance_timestamp** - timestamp of when a user accepted the GDPR-compliant EULA.

***

## Errors
None.

***

## Example
**Request (Using [OAuth][])**

    https://api.500px.com/v1/users

**Return**
``` json
{
  "user": {
    "id": 173,
    "username": "vovko",
    "firstname": "Voldemar",
    "lastname": "Petruskauskus",
    "birthday": null,
    "sex": 0,
    "city": "",
    "state": "",
    "country": "",
    "registration_date": "2009-11-08T12:41:14-05:00",
    "about": "lbalblabla",
    "domain": "vovko.500px.com",
    "upgrade_status": 2,
    "fotomoto_on": false,
    "locale": "en",
    "show_nude": true,
    "store_on": false,
    "contacts": {
      "website": "www.drizhepolov.com",
      "twitter": "vovko",
      "livejournal": "vovko",
      "flickr": "Vladimir Drizhepolov",
      "gtalk": "vladimir@drizhepolov.com",
      "skype": "trulllllll",
      "facebook": "562874260",
      "facebookpage": "www.facebook.com/vovko"
    },
    "equipment": {
      "camera": [
        "Kiev 88",
        "Lomo Rocket",
        "Lomo Action sampler"
      ],
      "lens": [
        "Volna 80mm"
      ]
    },
    "fullname": "Voldemar Petruskauskus",
    "userpic_url": "http://acdn.500px.net/173.jpg",
    "email": "vladimir@drizhepolov.com",
    "photos_count": 5,
    "galleries_count": 5,
    "affection": 7,
    "friends_count": 37,
    "followers_count": 7,
    "upload_limit": null,
    "upload_limit_expiry": "2012-06-08T14:30:28-04:00",
    "upgrade_status_expiry": "2012-12-12",
    "show_personalized_categories": true,
    "auth": {
      "facebook": 0,
      "twitter": 0
    }
  }
}
```

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[full format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#profile-format
