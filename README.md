# 500px API

500px API provides programmatic access to 500px functionality and content.
Version 1 of the API is limited to the essentials of the website's functionality: viewing feature streams, photo information and comments, as well as user profiles.

The API is [REST API](http://en.wikipedia.org/wiki/Representational_State_Transfer "RESTful")
and uses [OAuth](http://oauth.net/ "OAuth") 1.0a for user authentication purposes.
Currently, return format for all endpoints is [JSON](http://json.org/ "JSON").

You can check out some hacks [here](http://developer.500px.com/hacks) and try our api in [console](http://bitly.com/api500px) ([http://bitly.com/api500px](http://bitly.com/api500px))

***

## Checklist
* [Try API console](http://bitly.com/api500px)
* [See if the concepts used by the API are familiar to you][]
* Familiarize yourself with API functionality
* Read the 500px [API Terms of Use][]
* [Register your application][] and get OAuth consumer key and secret
* Hack away

***

## Basics

- **[Formats and Terms](https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md)**
- **[API Terms of Use](https://github.com/500px/api-documentation/blob/master/basics/terms_of_use.md)**

## Examples

- **[JavaScript](http://500px.github.com/500px-js-sdk)**
- **[iOS](https://github.com/500px/api-documentation/blob/master/examples/iOS/API%20Tutorials.md)**
- **[Ruby](https://github.com/500px/api-documentation/blob/master/examples/Ruby/)**
- **[PHP](https://github.com/500px/api-documentation/blob/master/examples/PHP/PHP.md)**

## SDK

- **[JavaScript](https://github.com/500px/500px-js-sdk)**
- **[Python](https://github.com/500px/PxMagic)**
- **[Android](https://github.com/500px/500px-android-sdk)**
- **[iOS](https://github.com/500px/500px-iOS-api)**

## Endpoints

#### Photo Resources

- **[<code>GET</code> photos](https://github.com/500px/api-documentation/blob/master/endpoints/photo/GET_photos.md)**
- **[<code>GET</code> photos/search](https://github.com/500px/api-documentation/blob/master/endpoints/photo/GET_photos_search.md)**
- **[<code>GET</code> photos/:id](https://github.com/500px/api-documentation/blob/master/endpoints/photo/GET_photos_id.md)**
- **[<code>GET</code> photos/:id/comments](https://github.com/500px/api-documentation/blob/master/endpoints/photo/GET_photos_id_comments.md)**
- **[<code>GET</code> photos/:id/favorites](https://github.com/500px/api-documentation/blob/master/endpoints/photo/GET_photos_id_favorites.md)**
- **[<code>GET</code> photos/:id/votes](https://github.com/500px/api-documentation/blob/master/endpoints/photo/GET_photos_id_votes.md)**
- **[<code>PUT</code> photos/:id](https://github.com/500px/api-documentation/blob/master/endpoints/photo/PUT_photos_id.md)**
- **[<code>POST</code> photos](https://github.com/500px/api-documentation/blob/master/endpoints/photo/POST_photos.md)**
- **[<code>POST</code> photos/upload](https://github.com/500px/api-documentation/blob/master/endpoints/photo/POST_photos_upload.md)**
- **[<code>POST</code> photos/:id/vote](https://github.com/500px/api-documentation/blob/master/endpoints/photo/POST_photos_id_vote.md)**
- **[<code>POST</code> photos/:id/tags](https://github.com/500px/api-documentation/blob/master/endpoints/photo/POST_photos_id_tags.md)**
- **[<code>POST</code> photos/:id/favorite](https://github.com/500px/api-documentation/blob/master/endpoints/photo/POST_photos_id_favorite.md)**
- **[<code>POST</code> photos/:id/comments](https://github.com/500px/api-documentation/blob/master/endpoints/photo/POST_photos_id_comments.md)**
- **[<code>DELETE</code> photos/:id](https://github.com/500px/api-documentation/blob/master/endpoints/photo/DELETE_photos_id.md)**
- **[<code>DELETE</code> photos/:id/tags](https://github.com/500px/api-documentation/blob/master/endpoints/photo/DELETE_photos_id_tags.md)**
- **[<code>DELETE</code> photos/:id/favorite](https://github.com/500px/api-documentation/blob/master/endpoints/photo/DELETE_photos_id_favorite.md)**

#### Upload Method

- **[<code>POST</codE> upload](https://github.com/500px/api-documentation/blob/master/endpoints/upload/POST_upload.md)**

#### User Resources

- **[<code>GET</code> users](https://github.com/500px/api-documentation/blob/master/endpoints/user/GET_users.md)**
- **[<code>GET</code> users/show](https://github.com/500px/api-documentation/blob/master/endpoints/user/GET_users_show.md)**
- **[<code>GET</code> users/:id/friends](https://github.com/500px/api-documentation/blob/master/endpoints/user/GET_users_id_friends.md)**
- **[<code>GET</code> users/:id/followers](https://github.com/500px/api-documentation/blob/master/endpoints/user/GET_users_id_followers.md)**
- **[<code>GET</code> users/search](https://github.com/500px/api-documentation/blob/master/endpoints/user/GET_users_search.md)**
- **[<code>POST</code> users/:id/friends](https://github.com/500px/api-documentation/blob/master/endpoints/user/POST_users_id_friends.md)**
- **[<code>DELETE</code> users/:id/friends](https://github.com/500px/api-documentation/blob/master/endpoints/user/DELETE_users_id_friends.md)**

#### Blog Resources

- **[<code>GET</code> blogs](https://github.com/500px/api-documentation/blob/master/endpoints/blog/GET_blogs.md)**
- **[<code>GET</code> blogs/:id](https://github.com/500px/api-documentation/blob/master/endpoints/blog/GET_blogs_id.md)**
- **[<code>GET</code> blogs/:id/comments](https://github.com/500px/api-documentation/blob/master/endpoints/blog/GET_blogs_id_comments.md)**
- **[<code>POST</code> blogs/:id/comments](https://github.com/500px/api-documentation/blob/master/endpoints/blog/POST_blogs_id_comments.md)**
- **[<code>POST</code> blogs](https://github.com/500px/api-documentation/blob/master/endpoints/blog/POST_blogs.md)**
- **[<code>PUT</code> blogs/:id](https://github.com/500px/api-documentation/blob/master/endpoints/blog/PUT_blogs_id.md)**
- **[<code>DELETE</code> blogs/:id](https://github.com/500px/api-documentation/blob/master/endpoints/blog/DELETE_blogs_id.md)**

#### Collections Resources

- **[<code>GET</code> collections](https://github.com/500px/api-documentation/blob/master/endpoints/collections/GET_collections.md)**
- **[<code>GET</code> collections/:id](https://github.com/500px/api-documentation/blob/master/endpoints/collections/GET_collections_id.md)**
- **[<code>POST</code> collections](https://github.com/500px/api-documentation/blob/master/endpoints/collections/POST_collections.md)**
- **[<code>PUT</code> collections/:id](https://github.com/500px/api-documentation/blob/master/endpoints/collections/PUT_collections_id.md)**
- **[<code>DELETE</code> collections/:id](https://github.com/500px/api-documentation/blob/master/endpoints/collections/DELETE_collections_id.md)**

## Authentication

- **[<code>POST</code> oauth/request_token](https://github.com/500px/api-documentation/blob/master/authentication/POST_oauth_requesttoken.md)**
- **[<code>POST</code> oauth/authorize](https://github.com/500px/api-documentation/blob/master/authentication/POST_oauth_authorize.md)**
- **[<code>POST</code> oauth/access_token](https://github.com/500px/api-documentation/blob/master/authentication/POST_oauth_accesstoken.md)**
- **[Upload key](https://github.com/500px/api-documentation/blob/master/authentication/upload_key.md)**


## FAQ
### What do I need to know before I start using the API?
Got rust on your skills? No worries. Here are the docs you might need to get started:

- HTTPS protocol
- [REST software pattern][]
- Authentication with [OAuth][] (or the official [Beginner’s Guide][])
- Data serialization with [JSON][] (or see a [quick tutorial][])

### How do I connect to the 500px.com API?
The API is only available to authenticated clients. Clients should authenticate users using [OAuth][]. Once authenticated, you need to request a resource from one of the endpoints using HTTPS. Generally, reading any data is done through a request with GET method. If you want our server to create, update or delete a given resource, POST or PUT methods are required.

### What return formats do you support?
500px API currently returns data in [JSON](http://json.org/ "JSON") format.

### What kind of authentication is required?
Applications must identify themselves to access any resource.
If your application only needs read-only access and does not authenticate the user, **consumer_key** containing a valid Consumer Key parameter should be specified in the query string. Otherwise, [OAuth](https://github.com/500px/api-documentation/tree/master/authentication) or upload key authentication takes care of identifying the application as well as the user accessing the API.

### Is there a request rate limit?
There is no set rate limit, but we are monitoring API activity to make sure everyone can get their share of access. We may contact you or even temporarily disable your application if we find that your application is interfering with the system's stability. We may introduce a request rate limit in the future.

[REST software pattern]: http://en.wikipedia.org/wiki/Representational_State_Transfer
[OAuth]: http://oauth.net/core/1.0a/
[Beginner’s Guide]: http://hueniverse.com/oauth/
[JSON]: http://json.org
[quick tutorial]: http://www.webmonkey.com/2010/02/get_started_with_json/
[Register your application]: http://500px.com/settings/applications
[API Terms of Use]: https://github.com/500px/api-documentation/blob/master/basics/terms_of_use.md
[See if the concepts used by the API are familiar to you]: https://github.com/500px/api-documentation#what-do-i-need-to-know-before-i-start-using-the-api
