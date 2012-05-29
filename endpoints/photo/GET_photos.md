# Photo Resources

    GET photos

## Description
Returns a listing of up to one hundred photos for a specified **[photo stream][]**.

***

## Requires authentication
* A valid Consumer Key must be provided in **consumer_key** parameter.
* Alternatively, a valid **[OAuth][]** request with an authorized Access Token will be accepted.

***

## Parameters
- **feature** _(required)_ — Photo stream to be retrieved. Recognized values:
    ### Global features
    - 'popular' — Return photos in Popular
    - 'upcoming' — Return photos in Upcoming
    - 'editors' — Return photos in Editors' Choice
    - 'fresh_today' — Return photos in Fresh Today
    - 'fresh_yesterday' — Return photos in Fresh Yesterday
    - 'fresh_week' — Return photos in Fresh This Week

    ### Per-user features
    All per-user streams require a **user_id** or **username** parameter
    
    - 'user' — Return photos by a specific user, as displayed on **[http://500px.com/:username][]**
    - 'user_friends' — Return photos by users the specified user is following, as displayed on **[http://500px.com/:username/following][]**
    - 'user_favorites' — Return photos added as favorites by the specified user, as displayed on **[http://500px.com/:username/favorites][]**

- **only** — String name of the **[category][]** to return photos from.
- **exclude** — String name of the **[category][]** to exclude photos by.
- **sort** — Sort photos in the specified order.
    ### Recognized values:
    **Note:** For global features default sorting will take precedence. (Consider a SQL query "ORDER BY rating DESC, times_viewed DESC" for feature popular)
    - 'created_at' — Sort by time of upload, most recent first
    - 'rating' — Sort by rating, highest rated first
    - 'times_viewed' — Sort by view count, most viewed first
    - 'votes_count' — Sort by votes count, most voted first
    - 'favorites_count' — Sort by favorites count, most favorited first
    - 'comments_count' — Sort by comments count, most commented first
    - 'taken_at' — Sort by the original date of the image extracted from metadata, most recent first (might not be available for all images)

- **page** — Return a specific page in the photo stream. Page numbering is 1-based.
- **rpp** — The number of results to return. Can not be over 100, default 20.

***

## Return format
An array with the following keys and values:

- **feature** — Feature that is being returned.
- **filters** — Additional filters that were used:
    - 'category' — The ID of the **[category][]** that photos were filtered by;
    - 'user_id' — The ID of the user specified by 'user_id' or 'username' parameters;
    - 'friends_ids' — IDs of users the user specified is following;
- **current_page** — Number of the page that is returned.
- **total_pages** — Total number of pages in this feature's stream.
- **total_items** — Total number of items in this feature's stream.
- **photos** — An array of Photo objects in **[short format][]**.

***

## Errors
None

***

## Example
**Request**
    
    https://api.500px.com/v1/photos?feature=editors&page=2&consumer_key=YOUR-CONSUMER-KEY

**Return**

    {
     "current_page": 2, 
     "feature": "editors", 
     "filters": {}, 
     "photos": [
      {
       "category": 9, 
       "id": 1281286, 
       "image_url": "http://devphotos.500px.com/1281286/939ce28e11982d6d61af4cc29514a9501d674d14/2.jpg", 
       "name": "Buzludzha #6", 
       "rating": 87.4, 
       "user": {
        "firstname": "David", 
        "fullname": "David Nightingale", 
        "id": 166524, 
        "lastname": "Nightingale", 
        "upgrade_status": 1, 
        "username": "chromasia", 
        "userpic_url": "http://devavatars.500px.net/166524.jpg"
       }, 
       "votes": 448
      }, 
      {
       "category": 9, 
       "id": 1281803, 
       "image_url": "http://devphotos.500px.com/1281803/82d650a689f70621441af10d550185a158044e13/2.jpg", 
       "name": "Lift, Lift and Lift", 
       "rating": 87.3, 
       "user": {
        "firstname": "Ralf", 
        "fullname": "Ralf Wendrich", 
        "id": 42601, 
        "lastname": "Wendrich", 
        "upgrade_status": 0, 
        "username": "Halsemann", 
        "userpic_url": "http://devavatars.500px.net/42601.jpg"
       }, 
       "votes": 377
      }, 
      {
       "category": 4, 
       "id": 1276521, 
       "image_url": "/graphics/nude/img_2.png", 
       "name": "calm", 
       "rating": 72.9, 
       "user": {
        "firstname": "Anka", 
        "fullname": "Anka Zhuravleva", 
        "id": 5256, 
        "lastname": "Zhuravleva", 
        "upgrade_status": 0, 
        "username": "Anka_Zhuravleva", 
        "userpic_url": "/graphics/userpic.png"
       }, 
       "votes": 122
      }, 
      {
       "category": 19, 
       "id": 1269864, 
       "image_url": "http://devphotos.500px.com/1269864/bc8a43b1db6f52048dd0aaa0cc1bc7fbd57f10a7/2.jpg", 
       "name": "The transition", 
       "rating": 88.6, 
       "user": {
        "firstname": "Olivier", 
        "fullname": "Olivier Maurin", 
        "id": 163245, 
        "lastname": "Maurin", 
        "upgrade_status": 0, 
        "username": "oliviermaurin", 
        "userpic_url": "http://devavatars.500px.net/163245.jpg"
       }, 
       "votes": 668
      }, 
      {
       "category": 11, 
       "id": 1271771, 
       "image_url": "http://devphotos.500px.com/1271771/7758c6a4812542163b66faa31cc163d7956684a2/2.jpg", 
       "name": "'Day Dreaming' ", 
       "rating": 87.8, 
       "user": {
        "firstname": "Andy", 
        "fullname": "Andy Trowbridge", 
        "id": 164515, 
        "lastname": "Trowbridge", 
        "upgrade_status": 0, 
        "username": "andytrowbridge", 
        "userpic_url": "http://devavatars.500px.net/164515.jpg"
       }, 
       "votes": 366
      }, 
      {
       "category": 7, 
       "id": 1272502, 
       "image_url": "http://devphotos.500px.com/1272502/b370f8f6b3a42de161f98bc5a1d712253fd9577c/2.jpg", 
       "name": "Its life", 
       "rating": 85.9, 
       "user": {
        "firstname": "Dmitry", 
        "fullname": "Dmitry Zhamkov", 
        "id": 126152, 
        "lastname": "Zhamkov", 
        "upgrade_status": 0, 
        "username": "DmitryZhamkov", 
        "userpic_url": "http://devavatars.500px.net/126152.jpg"
       }, 
       "votes": 390
      }, 
      {
       "category": 11, 
       "id": 1272620, 
       "image_url": "http://devphotos.500px.com/1272620/5a5ad434e77ef23eb157e43874a209421b6d7f72/2.jpg", 
       "name": "Golden Leap", 
       "rating": 87.2, 
       "user": {
        "firstname": "Etienne", 
        "fullname": "Etienne Oosthuizen", 
        "id": 156935, 
        "lastname": "Oosthuizen", 
        "upgrade_status": 0, 
        "username": "EtienneOosthuizen", 
        "userpic_url": "http://devavatars.500px.net/156935.jpg"
       }, 
       "votes": 188
      }, 
      {
       "category": 11, 
       "id": 1274852, 
       "image_url": "http://devphotos.500px.com/1274852/93233decbbbde32272bc6d7f85603c6ecc0fbf8a/2.jpg", 
       "name": "Migration Kenya 2010", 
       "rating": 87.7, 
       "user": {
        "firstname": "Jo", 
        "fullname": "Jo Knight", 
        "id": 164615, 
        "lastname": "Knight", 
        "upgrade_status": 0, 
        "username": "rjkphotography", 
        "userpic_url": "http://devavatars.500px.net/164615.jpg"
       }, 
       "votes": 234
      }, 
      {
       "category": 1, 
       "id": 1264307, 
       "image_url": "http://devphotos.500px.com/1264307/6fbc899a579a2c58971858c82552e0141f0b3870/2.jpg", 
       "name": "Rasco (U.S.A)", 
       "rating": 81.5, 
       "user": {
        "firstname": "Nabookwoo", 
        "fullname": "Nabookwoo Zi", 
        "id": 13604, 
        "lastname": "Zi", 
        "upgrade_status": 0, 
        "username": "nabookwoozi", 
        "userpic_url": "http://devavatars.500px.net/13604.jpg"
       }, 
       "votes": 147
      }, 
      {
       "category": 7, 
       "id": 1216571, 
       "image_url": "http://devphotos.500px.com/1216571/26e7bfca466c152e352d3ad92e801345595f7d75/2.jpg", 
       "name": "A curious wind blows this way", 
       "rating": 75.6, 
       "user": {
        "firstname": "Luke", 
        "fullname": "Luke  Sharratt", 
        "id": 38829, 
        "lastname": " Sharratt", 
        "upgrade_status": 0, 
        "username": "Dirty-Projector", 
        "userpic_url": "http://devavatars.500px.net/38829.jpg"
       }, 
       "votes": 207
      }, 
      {
       "category": 18, 
       "id": 1257970, 
       "image_url": "http://devphotos.500px.com/1257970/0e46318f9702c854eebd4627f7e34ace7f0c5092/2.jpg", 
       "name": "Solar transit of ISS", 
       "rating": 87.2, 
       "user": {
        "firstname": "Levin", 
        "fullname": "Levin Dieterle", 
        "id": 160937, 
        "lastname": "Dieterle", 
        "upgrade_status": 0, 
        "username": "addicted2light", 
        "userpic_url": "http://devavatars.500px.net/160937.jpg"
       }, 
       "votes": 406
      }, 
      {
       "category": 8, 
       "id": 1249097, 
       "image_url": "http://devphotos.500px.com/1249097/8d1ae593a8c35889fcbb9e99c5c84abd45a348e3/2.jpg", 
       "name": "Inspiration", 
       "rating": 74.8, 
       "user": {
        "firstname": "Michael James", 
        "fullname": "Michael James Combe", 
        "id": 110341, 
        "lastname": "Combe", 
        "upgrade_status": 0, 
        "username": "mjcombe", 
        "userpic_url": "http://devavatars.500px.net/110341.jpg"
       }, 
       "votes": 134
      }, 
      {
       "category": 18, 
       "id": 1251304, 
       "image_url": "http://devphotos.500px.com/1251304/8eb4b7a940e25cc0f5f66d03a377be7afc0c3482/2.jpg", 
       "name": "Longhorn in Flight", 
       "rating": 76.6, 
       "user": {
        "firstname": "Dale", 
        "fullname": "Dale Sutton", 
        "id": 135038, 
        "lastname": "Sutton", 
        "upgrade_status": 0, 
        "username": "dalecath", 
        "userpic_url": "http://devavatars.500px.net/135038.jpg"
       }, 
       "votes": 209
      }, 
      {
       "category": 13, 
       "id": 1246711, 
       "image_url": "http://devphotos.500px.com/1246711/28ec0b9b5c58663c905b39f17dced3611dd415b8/2.jpg", 
       "name": "Invasion of the Dunes", 
       "rating": 78.0, 
       "user": {
        "firstname": "Marsel", 
        "fullname": "Marsel van Oosten", 
        "id": 132499, 
        "lastname": "van Oosten", 
        "upgrade_status": 0, 
        "username": "MarselvanOosten", 
        "userpic_url": "http://devavatars.500px.net/132499.jpg"
       }, 
       "votes": 706
      }, 
      {
       "category": 7, 
       "id": 1218548, 
       "image_url": "http://devphotos.500px.com/1218548/a59d6f35c204312f724c12065b23e41ba7595876/2.jpg", 
       "name": "Marianne IV", 
       "rating": 78.5, 
       "user": {
        "firstname": "Charles", 
        "fullname": "Charles Hildreth", 
        "id": 91275, 
        "lastname": "Hildreth", 
        "upgrade_status": 1, 
        "username": "hildreth", 
        "userpic_url": "http://devavatars.500px.net/91275.jpg"
       }, 
       "votes": 620
      }, 
      {
       "category": 24, 
       "id": 1186095, 
       "image_url": "http://devphotos.500px.com/1186095/96acd2cf9d4b57832f10e50a3154699d7de55523/2.jpg", 
       "name": "Loch Rusky , Trossachs", 
       "rating": 78.7, 
       "user": {
        "firstname": "David", 
        "fullname": "David Mould", 
        "id": 153079, 
        "lastname": "Mould", 
        "upgrade_status": 1, 
        "username": "mouldy", 
        "userpic_url": "http://devavatars.500px.net/153079.jpg"
       }, 
       "votes": 462
      }, 
      {
       "category": 11, 
       "id": 1219839, 
       "image_url": "http://devphotos.500px.com/1219839/05f270c0e502594bbdafbb734b0a9bd38f49390d/2.jpg", 
       "name": "Silent Slumbers", 
       "rating": 78.6, 
       "user": {
        "firstname": "Andy", 
        "fullname": "Andy Rouse", 
        "id": 85076, 
        "lastname": "Rouse", 
        "upgrade_status": 0, 
        "username": "andyrouse", 
        "userpic_url": "http://devavatars.500px.net/85076.jpg"
       }, 
       "votes": 338
      }, 
      {
       "category": 8, 
       "id": 1195521, 
       "image_url": "http://devphotos.500px.com/1195521/c789c715471a0cbdea8ae1f159737309e8638895/2.jpg", 
       "name": "Where the wild AT-AT things are.", 
       "rating": 77.5, 
       "user": {
        "firstname": "Fran", 
        "fullname": "Fran Efless", 
        "id": 106813, 
        "lastname": "Efless", 
        "upgrade_status": 0, 
        "username": "Efless", 
        "userpic_url": "http://devavatars.500px.net/106813.jpg"
       }, 
       "votes": 450
      }, 
      {
       "category": 12, 
       "id": 1230659, 
       "image_url": "http://devphotos.500px.com/1230659/254ccea0bb19bab20516d32bc8426a7535a9a6d7/2.jpg", 
       "name": "Blackberry C.S.I.", 
       "rating": 76.6, 
       "user": {
        "firstname": "Christopher", 
        "fullname": "Christopher Boffoli", 
        "id": 56052, 
        "lastname": "Boffoli", 
        "upgrade_status": 1, 
        "username": "cjboffoli", 
        "userpic_url": "http://devavatars.500px.net/56052.jpg"
       }, 
       "votes": 443
      }, 
      {
       "category": 5, 
       "id": 1221342, 
       "image_url": "http://devphotos.500px.com/1221342/af39d0251f471e86e8a413d50e1715a6df6287ee/2.jpg", 
       "name": "Untitled", 
       "rating": 75.8, 
       "user": {
        "firstname": "Raphael", 
        "fullname": "Raphael Guarino", 
        "id": 83597, 
        "lastname": "Guarino", 
        "upgrade_status": 0, 
        "username": "Raphaelguarino", 
        "userpic_url": "http://devavatars.500px.net/83597.jpg"
       }, 
       "votes": 292
      }
     ], 
     "total_items": 1738, 
     "total_pages": 87
    }

[photo stream]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#500px-photo-terms
[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[http://500px.com/:username]: http://500px.com/iansobolev
[http://500px.com/:username/following]: http://500px.com/iansobolev/following
[http://500px.com/:username/favorites]: http://500px.com/iansobolev/favorites
[category]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#categories
[short format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#short-format-1