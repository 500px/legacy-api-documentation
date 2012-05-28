# Photo Resources

    GET photos/:id

## Description
Returns detailed information of a single photo.

***

## Requires authentication
- A valid Consumer Key must be provided in consumer_key parameter.
- Alternatively, a valid OAuth request with an authorized Access Token will be accepted.

***

## Parameters

- **image_size** — Numerical size of the image to link to, 1 being the smallest and 4 being the largest.
- **comments** — Return comments to the photo in the response. Comments are returned in order of creation, 20 entries per page.
- **comments_page** — Return the specified page from the comments listing. Page numbers are 1-based.

***

## Return format
A JSON object containing keys **photo** and **comments**, where **photo** is a Photo object in full format and comments is a list of **comments** associated with the photo in the following format:

- **id** — ID of the comment.
- **body** — Text of the comment.
- **user_id** — The ID of the author of the comment.
- **user** — Profile of the author of the comment in short format.
- **to_whom_user_id** — Is always the ID of the author of the photo.

### When requested with OAuth authentication, following keys will be included in the photo object:

- **voted** — Whether the current user has voted for this photo, boolean
- **favorited** — Whether the current user currently has this photo in favorites, boolean

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **403 Forbidden** — The photo was either deleted, belongs to a deactivated user.
- **404 Not Found** — Photo with the specified ID does not exist.


***

## Example
**Request**

    https://api.500px.com/v1/photos/1195521?comments=1&comments_page=3&consumer_key=YOUR-CONSUMER-KEY

**Return**

    {
     "comments": [
      {
       "body": "Awesome shot, great composite. Love the simplicity.", 
       "created_at": "2011-07-20T13:59:19Z", 
       "id": 1270512, 
       "to_whom_user_id": 106813, 
       "user": {
        "firstname": "Ryan", 
        "fullname": "Ryan Parker", 
        "id": 135922, 
        "lastname": "Parker", 
        "upgrade_status": 1, 
        "username": "mazeimage", 
        "userpic_url": "http://devavatars.500px.net/135922.jpg"
       }, 
       "user_id": 135922
      }, 
      {
       "body": "superb!", 
       "created_at": "2011-07-20T15:54:25Z", 
       "id": 1272008, 
       "to_whom_user_id": 106813, 
       "user": {
        "firstname": "Vinoth", 
        "fullname": "Vinoth Chandar", 
        "id": 12036, 
        "lastname": "Chandar", 
        "upgrade_status": 0, 
        "username": "VinothChandar", 
        "userpic_url": "http://external.ak.fbcdn.net/safe_image.php?d=f6b5fabb63a5dabbb209960925dd4e35&url=http%3A%2F%2Fprofile.ak.fbcdn.net%2Fhprofile-ak-snc4%2Fhs643.snc3%2F27395_1443589484_8286_n.jpg&logo&v=5"
       }, 
       "user_id": 12036
      }, 
      {
       "body": "Pure awesomeness!!", 
       "created_at": "2011-07-20T19:14:48Z", 
       "id": 1274833, 
       "to_whom_user_id": 106813, 
       "user": {
        "firstname": "Axel", 
        "fullname": "Axel Brunst", 
        "id": 42621, 
        "lastname": "Brunst", 
        "upgrade_status": 0, 
        "username": "Axel-Brunst", 
        "userpic_url": "http://devavatars.500px.net/42621.jpg"
       }, 
       "user_id": 42621
      }, 
      {
       "body": "Seen in Editor's choice. Amazing image man.", 
       "created_at": "2011-07-20T22:15:42Z", 
       "id": 1277464, 
       "to_whom_user_id": 106813, 
       "user": {
        "firstname": "Nick", 
        "fullname": "Nick Sanford", 
        "id": 158735, 
        "lastname": "Sanford", 
        "upgrade_status": 0, 
        "username": "NickSanford", 
        "userpic_url": "/graphics/userpic.png"
       }, 
       "user_id": 158735
      }, 
      {
       "body": "This has to be one of the cleverest Star Wars scene I've seen. Well done.", 
       "created_at": "2011-07-21T02:47:35Z", 
       "id": 1279352, 
       "to_whom_user_id": 106813, 
       "user": {
        "firstname": "Vivienne", 
        "fullname": "Vivienne S", 
        "id": 138928, 
        "lastname": "S", 
        "upgrade_status": 0, 
        "username": "Vivienne_NVS", 
        "userpic_url": "http://devavatars.500px.net/138928.jpg"
       }, 
       "user_id": 138928
      }, 
      {
       "body": "Awesome shot. It looks like something out of a Sci-fi movie...", 
       "created_at": "2011-07-21T03:59:08Z", 
       "id": 1279908, 
       "to_whom_user_id": 106813, 
       "user": {
        "firstname": "Louw", 
        "fullname": "Louw Roets", 
        "id": 131580, 
        "lastname": "Roets", 
        "upgrade_status": 0, 
        "username": "Louw", 
        "userpic_url": "http://devavatars.500px.net/131580.jpg"
       }, 
       "user_id": 131580
      }, 
      {
       "body": "WOW!!!! amazing!!!!", 
       "created_at": "2011-07-21T04:15:41Z", 
       "id": 1280030, 
       "to_whom_user_id": 106813, 
       "user": {
        "firstname": "Eleana", 
        "fullname": "Eleana Der", 
        "id": 160727, 
        "lastname": "Der", 
        "upgrade_status": 0, 
        "username": "Eleana", 
        "userpic_url": "http://devavatars.500px.net/160727.jpg"
       }, 
       "user_id": 160727
      }, 
      {
       "body": "love this", 
       "created_at": "2011-07-21T05:11:08Z", 
       "id": 1280479, 
       "to_whom_user_id": 106813, 
       "user": {
        "firstname": "helen", 
        "fullname": "helen sotiriadis", 
        "id": 69676, 
        "lastname": "sotiriadis", 
        "upgrade_status": 0, 
        "username": "helensotiriadis", 
        "userpic_url": "http://devavatars.500px.net/69676.jpg"
       }, 
       "user_id": 69676
      }, 
      {
       "body": "awesome pic!", 
       "created_at": "2011-07-21T13:03:09Z", 
       "id": 1285366, 
       "to_whom_user_id": 106813, 
       "user": {
        "firstname": "Ken", 
        "fullname": "Ken Straka", 
        "id": 156906, 
        "lastname": "Straka", 
        "upgrade_status": 0, 
        "username": "kestraka", 
        "userpic_url": "http://devavatars.500px.net/156906.jpg"
       }, 
       "user_id": 156906
      }, 
      {
       "body": "Excellent!", 
       "created_at": "2011-07-21T13:25:54Z", 
       "id": 1285588, 
       "to_whom_user_id": 106813, 
       "user": {
        "firstname": "Nick", 
        "fullname": "Nick Maddox", 
        "id": 115802, 
        "lastname": "Maddox", 
        "upgrade_status": 0, 
        "username": "NickMaddox", 
        "userpic_url": "http://devavatars.500px.net/115802.jpg"
       }, 
       "user_id": 115802
      }, 
      {
       "body": "this is so gorgeous!", 
       "created_at": "2011-07-21T13:28:11Z", 
       "id": 1285621, 
       "to_whom_user_id": 106813, 
       "user": {
        "firstname": "\u0415\u043b\u0435\u043d\u0430", 
        "fullname": "\u0415\u043b\u0435\u043d\u0430 \u041d\u0438\u043a\u043e\u043b\u0430\u0435\u0432\u0430", 
        "id": 44226, 
        "lastname": "\u041d\u0438\u043a\u043e\u043b\u0430\u0435\u0432\u0430", 
        "upgrade_status": 0, 
        "username": "La_fille_du_soleil", 
        "userpic_url": "http://devavatars.500px.net/44226.jpg"
       }, 
       "user_id": 44226
      }, 
      {
       "body": "I'll take 2!", 
       "created_at": "2011-07-21T16:00:26Z", 
       "id": 1287485, 
       "to_whom_user_id": 106813, 
       "user": {
        "firstname": "Ravi Shanker", 
        "fullname": "Ravi Shanker Seethapathy", 
        "id": 58218, 
        "lastname": "Seethapathy", 
        "upgrade_status": 0, 
        "username": "ravishanker", 
        "userpic_url": "http://devavatars.500px.net/58218.jpg"
       }, 
       "user_id": 58218
      }, 
      {
       "body": "Fantastic! Great idea!", 
       "created_at": "2011-07-21T16:56:47Z", 
       "id": 1288307, 
       "to_whom_user_id": 106813, 
       "user": {
        "firstname": "Diego", 
        "fullname": "Diego Velo", 
        "id": 134102, 
        "lastname": "Velo", 
        "upgrade_status": 0, 
        "username": "DiegoVelo", 
        "userpic_url": "/graphics/userpic.png"
       }, 
       "user_id": 134102
      }, 
      {
       "body": "Thanx for your words :D", 
       "created_at": "2011-07-21T21:53:46Z", 
       "id": 1292750, 
       "to_whom_user_id": 106813, 
       "user": {
        "firstname": "Fran", 
        "fullname": "Fran Efless", 
        "id": 106813, 
        "lastname": "Efless", 
        "upgrade_status": 0, 
        "username": "Efless", 
        "userpic_url": "http://devavatars.500px.net/106813.jpg"
       }, 
       "user_id": 106813
      }, 
      {
       "body": "Summer in Hoth...right?  Great shot.", 
       "created_at": "2011-07-22T04:26:11Z", 
       "id": 1295996, 
       "to_whom_user_id": 106813, 
       "user": {
        "firstname": "Scott", 
        "fullname": "Scott Prokop", 
        "id": 100203, 
        "lastname": "Prokop", 
        "upgrade_status": 1, 
        "username": "scottprokop", 
        "userpic_url": "http://devavatars.500px.net/100203.jpg"
       }, 
       "user_id": 100203
      }, 
      {
       "body": "this is great!", 
       "created_at": "2011-07-22T13:31:29Z", 
       "id": 1302008, 
       "to_whom_user_id": 106813, 
       "user": {
        "firstname": "Prokhor", 
        "fullname": "Prokhor M", 
        "id": 35946, 
        "lastname": "M", 
        "upgrade_status": 0, 
        "username": "dec2373", 
        "userpic_url": "http://devavatars.500px.net/35946.jpg"
       }, 
       "user_id": 35946
      }, 
      {
       "body": "Love it.", 
       "created_at": "2011-07-22T16:11:17Z", 
       "id": 1304248, 
       "to_whom_user_id": 106813, 
       "user": {
        "firstname": "Alex", 
        "fullname": "Alex Fraser", 
        "id": 112875, 
        "lastname": "Fraser", 
        "upgrade_status": 0, 
        "username": "urbanpirahnatwo", 
        "userpic_url": "http://devavatars.500px.net/112875.jpg"
       }, 
       "user_id": 112875
      }, 
      {
       "body": "Great capture!", 
       "created_at": "2011-07-22T16:43:27Z", 
       "id": 1304853, 
       "to_whom_user_id": 106813, 
       "user": {
        "firstname": "Michelle", 
        "fullname": "Michelle Styve", 
        "id": 67124, 
        "lastname": "Styve", 
        "upgrade_status": 0, 
        "username": "michellestyve", 
        "userpic_url": "http://devavatars.500px.net/67124.jpg"
       }, 
       "user_id": 67124
      }, 
      {
       "body": "So cool!", 
       "created_at": "2011-07-22T16:52:19Z", 
       "id": 1305014, 
       "to_whom_user_id": 106813, 
       "user": {
        "firstname": "Jim", 
        "fullname": "Jim Gibson", 
        "id": 164926, 
        "lastname": "Gibson", 
        "upgrade_status": 0, 
        "username": "sdbanjo", 
        "userpic_url": "http://devavatars.500px.net/164926.jpg"
       }, 
       "user_id": 164926
      }, 
      {
       "body": "Terrible ! ", 
       "created_at": "2011-07-22T20:22:15Z", 
       "id": 1308781, 
       "to_whom_user_id": 106813, 
       "user": {
        "firstname": "Laurent", 
        "fullname": "Laurent Caille", 
        "id": 165097, 
        "lastname": "Caille", 
        "upgrade_status": 0, 
        "username": "laurentcaille", 
        "userpic_url": "http://devavatars.500px.net/165097.jpg"
       }, 
       "user_id": 165097
      }
     ], 
     "photo": {
      "aperture": "8", 
      "camera": "Canon EOS 7D", 
      "category": 8, 
      "comments_count": 74, 
      "created_at": "2011-07-16T10:55:22Z", 
      "description": "I discovered an old AT-AT living in a beach not too far away from my home. I love new friends.", 
      "favorites_count": 204, 
      "focal_length": "45", 
      "id": 1195521, 
      "image_url": "http://devphotos.500px.com/1195521/c789c715471a0cbdea8ae1f159737309e8638895/4.jpg", 
      "iso": "100", 
      "latitude": null, 
      "lens": "Canon 24-105 f/4L", 
      "location": null, 
      "longitude": null, 
      "name": "Where the wild AT-AT things are.", 
      "rating": 77.5, 
      "shutter_speed": "1/125", 
      "status": 1, 
      "taken_at": null, 
      "times_viewed": 10426, 
      "user": {
       "city": "Langreo", 
       "country": "Spain", 
       "domain": null, 
       "firstname": "Fran", 
       "fullname": "Fran Efless", 
       "id": 106813, 
       "lastname": "Efless", 
       "username": "Efless", 
       "userpic_url": "http://devavatars.500px.net/106813.jpg"
      }, 
      "user_id": 106813, 
      "votes_count": 450
     }
    }