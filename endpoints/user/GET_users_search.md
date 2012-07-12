# User Resources

    GET users/search

## Description
Return listing of ten (up to one hundred) users from search results for a specified search term.

***

## Requires authentication
* A valid Consumer Key must be provided in **consumer_key** parameter.
* Alternatively, a valid **[OAuth][]** request with an authorized Access Token will be accepted.

***

## Parameters
- **term** _(required)_ — A keyword to search for.

***

## Return format
An array with the following keys and values:

- **current_page** — Number of the page that is returned.
- **total_pages** — Total number of pages in this feature's stream.
- **total_items** — Total number of items in this feature's stream.
- **users** — An array of Users objects in **[full format][]**. **.

***

## Errors
- **400 Bad Request** — The request issued is missing one or more of the required parameters or contains parameters in an invalid form.

***

## Example
**Request**

  GET v1/photos/search?term=vovko

**Return**
``` json
{
  "current_page": 1,
  "total_pages": 1,
  "total_items": 1,
  "users": [
    {
      "id": 173,
      "username": "vovko",
      "firstname": "Vladimir",
      "lastname": "Drizhepolov",
      "birthday": null,
      "sex": 1,
      "city": "Toronto",
      "state": "Ontario",
      "country": "Canada",
      "registration_date": "2009-11-08T12:41:14-05:00",
      "about": "Toronto based photographer.\r\n",
      "domain": "vovko.500px.com",
      "fotomoto_on": true,
      "locale": "en",
      "show_nude": true,
      "fullname": "Vladimir Drizhepolov",
      "userpic_url": "http://acdn.500px.net/173.jpg",
      "upgrade_status": 2,
      "store_on": true,
      "contacts": {
        "website": "vovko.ca",
        "twitter": "vovko",
        "flickr": "Vladimir Drizhepolov",
        "gtalk": "vladimir@drizhepolov.com",
        "facebook": "562874260",
        "blog": "www.vovko.ca"
      },
      "equipment": {
        "camera": [
          "Kiev 88"
        ],
        "lens": [
          "Volna 80mm"
        ]
      },
      "photos_count": 17,
      "affection": 4,
      "in_favorites_count": 1,
      "friends_count": 86,
      "followers_count": 18,
      "following": false
    }
  ]
}
```

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[full format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#full-format