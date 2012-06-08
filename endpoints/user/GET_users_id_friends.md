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

    http://500px.com/api/users/34/friends.json

**Return**

    {
    "friends": [
     {
         "city": "southern california", 
         "country": "United States", 
         "firstname": "Jessica", 
         "fullname": "Jessica Trinh", 
         "id": 124403, 
         "lastname": "Trinh", 
         "upgrade_status": 0, 
         "username": "sprinklehappiness", 
         "userpic_url": "http://s3.amazonaws.com/avatars.500px.net/124403.jpg"
     }, 
     {
         "city": "London", 
         "country": "UK", 
         "firstname": "Richard", 
         "fullname": "Richard Waters", 
         "id": 118027, 
         "lastname": "Waters", 
         "upgrade_status": 0, 
         "username": "RichardWaters", 
         "userpic_url": "http://s3.amazonaws.com/avatars.500px.net/118027.jpg"
     }, 
     {
         "city": "", 
         "country": "", 
         "firstname": "Tamara", 
         "fullname": "Tamara L.", 
         "id": 107451, 
         "lastname": "L.", 
         "upgrade_status": 0, 
         "username": "Tam_ara", 
         "userpic_url": "http://s3.amazonaws.com/avatars.500px.net/107451.jpg"
     }, 
     {
         "city": "Oldsmar", 
         "country": "United States", 
         "firstname": "Scott", 
         "fullname": "Scott Kelby", 
         "id": 103003, 
         "lastname": "Kelby", 
         "upgrade_status": 2, 
         "username": "skelby", 
         "userpic_url": "http://s3.amazonaws.com/avatars.500px.net/103003.jpg"
     }, 
     {
         "city": "Atlanta", 
         "country": "USA", 
         "firstname": "Zack", 
         "fullname": "Zack Arias", 
         "id": 98299, 
         "lastname": "Arias", 
         "upgrade_status": 1, 
         "username": "zarias", 
         "userpic_url": "http://s3.amazonaws.com/avatars.500px.net/98299.jpg"
     }, 
     {
         "city": "K\u00f6ln", 
         "country": "Deutschland", 
         "firstname": "~t.", 
         "fullname": "~t. k.~", 
         "id": 91572, 
         "lastname": "k.~", 
         "upgrade_status": 0, 
         "username": "-braun-", 
         "userpic_url": "http://s3.amazonaws.com/avatars.500px.net/91572.jpg"
     }, 
     {
         "city": "Mission", 
         "country": "Canada", 
         "firstname": "Alan", 
         "fullname": "Alan Bailward", 
         "id": 83485, 
         "lastname": "Bailward", 
         "upgrade_status": 0, 
         "username": "AlanBailward", 
         "userpic_url": "http://s3.amazonaws.com/avatars.500px.net/83485.jpg"
     }, 
     {
         "city": "", 
         "country": "UK", 
         "firstname": "Will & Matt", 
         "fullname": "Will & Matt Burrard-Lucas", 
         "id": 82574, 
         "lastname": "Burrard-Lucas", 
         "upgrade_status": 1, 
         "username": "wildlife", 
         "userpic_url": "http://s3.amazonaws.com/avatars.500px.net/82574.jpg"
     }, 
     {
         "city": "", 
         "country": "United States", 
         "firstname": "Misty Dawn", 
         "fullname": "Misty Dawn Seidel", 
         "id": 81736, 
         "lastname": "Seidel", 
         "upgrade_status": 0, 
         "username": "MistyDawnS", 
         "userpic_url": "http://s3.amazonaws.com/avatars.500px.net/81736.jpg"
     }, 
     {
         "city": "Corona", 
         "country": "", 
         "firstname": "John", 
         "fullname": "John Estep", 
         "id": 78698, 
         "lastname": "Estep", 
         "upgrade_status": 0, 
         "username": "jestep", 
         "userpic_url": "http://s3.amazonaws.com/avatars.500px.net/78698.jpg"
     }, 
     {
         "city": "", 
         "country": "UK", 
         "firstname": "Austin", 
         "fullname": "Austin Thomas", 
         "id": 74606, 
         "lastname": "Thomas", 
         "upgrade_status": 0, 
         "username": "Austin_Thomas", 
         "userpic_url": "http://s3.amazonaws.com/avatars.500px.net/74606.jpg"
     }, 
     {
         "city": "Denver", 
         "country": "United States", 
         "firstname": "John", 
         "fullname": "John De Bord Photography", 
         "id": 74001, 
         "lastname": "De Bord Photography", 
         "upgrade_status": 0, 
         "username": "jdebordphoto", 
         "userpic_url": "http://s3.amazonaws.com/avatars.500px.net/74001.jpg"
     }, 
     {
         "city": "San Francisco", 
         "country": "US", 
         "firstname": "Patrick", 
         "fullname": "Patrick Smith", 
         "id": 66477, 
         "lastname": "Smith", 
         "upgrade_status": 1, 
         "username": "PatrickSmithPhotography", 
         "userpic_url": "http://s3.amazonaws.com/avatars.500px.net/66477.jpg"
     }, 
     {
         "city": "\u041c\u043e\u0441\u043a\u0432\u0430", 
         "country": "\u0420\u043e\u0441\u0441\u0438\u044f ", 
         "firstname": "Sergey", 
         "fullname": "Sergey Konstantinov", 
         "id": 65580, 
         "lastname": "Konstantinov", 
         "upgrade_status": 0, 
         "username": "S_E_R_G_E_Y", 
         "userpic_url": "http://s3.amazonaws.com/avatars.500px.net/65580.jpg"
     }, 
     {
         "city": "Toronto", 
         "country": "Canada", 
         "firstname": "Sara", 
         "fullname": "Sara Collaton", 
         "id": 56732, 
         "lastname": "Collaton", 
         "upgrade_status": 1, 
         "username": "saracollaton", 
         "userpic_url": "http://s3.amazonaws.com/avatars.500px.net/56732.jpg"
     }, 
     {
         "city": "Moskow", 
         "country": "Russia. Ukraine. Europa", 
         "firstname": "Yan", 
         "fullname": "Yan McLine", 
         "id": 54109, 
         "lastname": "McLine", 
         "upgrade_status": 0, 
         "username": "YanMcLine", 
         "userpic_url": "http://s3.amazonaws.com/avatars.500px.net/54109.jpg"
     }, 
     {
         "city": "Caracas", 
         "country": "Venezuela", 
         "firstname": "Carmen", 
         "fullname": "Carmen Moreno", 
         "id": 48306, 
         "lastname": "Moreno", 
         "upgrade_status": 0, 
         "username": "CarmenMoreno", 
         "userpic_url": "http://s3.amazonaws.com/avatars.500px.net/48306.jpg"
     }, 
     {
         "city": "", 
         "country": "Canada", 
         "firstname": "Roof", 
         "fullname": "Roof Topper", 
         "id": 48190, 
         "lastname": "Topper", 
         "upgrade_status": 2, 
         "username": "tom", 
         "userpic_url": "http://s3.amazonaws.com/avatars.500px.net/48190.jpg"
     }, 
     {
         "city": "Moscow", 
         "country": "", 
         "firstname": "Sue", 
         "fullname": "Sue Silence", 
         "id": 41022, 
         "lastname": "Silence", 
         "upgrade_status": 0, 
         "username": "Sue_silence", 
         "userpic_url": "http://s3.amazonaws.com/avatars.500px.net/41022.jpg"
     }, 
     {
         "city": "", 
         "country": "", 
         "firstname": "iuki ", 
         "fullname": "iuki  Photography", 
         "id": 30549, 
         "lastname": "Photography", 
         "upgrade_status": 0, 
         "username": "iuki", 
         "userpic_url": "http://s3.amazonaws.com/avatars.500px.net/30549.jpg"
     }
    ], 
    "friends_count": 26, 
    "friends_pages": 2, 
    "page": 1
    }

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[short format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#short-format-1