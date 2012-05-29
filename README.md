# 500px API

500px API provides programmatic access to 500px functionality and content. Version 1 of the API is limited to the essentials of the website's functionality: viewing feature streams, photo information and comments, as well as user profiles.

The API is [REST API](http://en.wikipedia.org/wiki/Representational_State_Transfer "RESTful") and uses [OAuth](http://oauth.net/ "OAuth") 1.0a and 2.0 for user authentication purposes. Currently, return format for all endpoints is [JSON](http://json.org/ "JSON").

***

## Checklist
* [See if the concepts used by the API are familiar to you][]
* Familiarize yourself with API functionality
* Read the 500px [API Terms of Use][]
* [Register your application][] and get OAuth consumer key and secret
* Hack away

***

## Basics

- **[Formats and Terms](https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md)**
- **[Examples](https://github.com/500px/api-documentation/blob/master/basics/examples.md)**
- **[API Terms of Use](https://github.com/500px/api-documentation/blob/master/basics/terms_of_use.md)**

## Endpoints

#### Photo Resources

- **[<code>GET</code> photos](https://github.com/500px/api-documentation/blob/master/endpoints/photo/GET_photos.md)**
- **[<code>GET</code> photos/search](https://github.com/500px/api-documentation/blob/master/endpoints/photo/GET_photos_search.md)**
- **[<code>GET</code> photos/:id](https://github.com/500px/api-documentation/blob/master/endpoints/photo/GET_photos_show.md)**
- **[<code>POST</code> photos](https://github.com/500px/api-documentation/blob/master/endpoints/photo/POST_photos.md)**
- **[<code>POST</code> photos/:id](https://github.com/500px/api-documentation/blob/master/endpoints/photo/POST_photos_id.md)**
- **[<code>POST</code> photos/:id/vote](https://github.com/500px/api-documentation/blob/master/endpoints/photo/POST_photos_id_vote.md)**

#### Upload Method

- **[<code>POST</codE> upload](https://github.com/500px/api-documentation/blob/master/endpoints/upload/POST_upload.md)**

#### User Resources

- **[<code>GET</code> users](https://github.com/500px/api-documentation/blob/master/endpoints/user/GET_users.md)**
- **[<code>GET</code> users/show](https://github.com/500px/api-documentation/blob/master/endpoints/user/GET_users_show.md)**
- **[<code>GET</code> users/:id/friends](https://github.com/500px/api-documentation/blob/master/endpoints/user/GET_users_id_friends.md)**

#### Blog Resources

- **[<code>GET</code> blogs](https://github.com/500px/api-documentation/blob/master/endpoints/blog/GET_blogs.md)**
- **[<code>GET</code> blogs/:id](https://github.com/500px/api-documentation/blob/master/endpoints/blog/GET_blogs_id.md)**
- **[<code>GET</code> blogs/:id/comments](https://github.com/500px/api-documentation/blob/master/endpoints/blog/GET_blogs_id_comments.md)**
- **[<code>POST</code> blogs/:id/comments](https://github.com/500px/api-documentation/blob/master/endpoints/blog/POST_blogs_id_comments.md)**
- **[<code>POST</code> blogs](https://github.com/500px/api-documentation/blob/master/endpoints/blog/POST_blogs.md)**
- **[<code>POST</code> blogs/:id](https://github.com/500px/api-documentation/blob/master/endpoints/blog/POST_blogs_id.md)**
- **[<code>DELETE</code> blogs/:id](https://github.com/500px/api-documentation/blob/master/endpoints/blog/DELETE_blogs_id.md)**


## Authentication

- **[<code>POST</code> oauth/request_token](https://github.com/500px/api-documentation/blob/master/authentication/POST_oauth_requesttoken.md)**
- **[<code>POST</code> oauth/authorize](https://github.com/500px/api-documentation/blob/master/authentication/POST_oauth_authorize.md)**
- **[<code>POST</code> oauth/access_token](https://github.com/500px/api-documentation/blob/master/authentication/POST_oauth_accesstoken.md)**
- **[Upload key](https://github.com/500px/api-documentation/blob/master/authentication/upload_key.md)**

***

## FAQ
### What do I need to know before I start using the API?
Got rust on your skills? No worries. Here are the docs you might need to get started:

- [HTTP protocol][]
- [REST software pattern][]
- Authentication with [OAuth][] (or the official [Beginner’s Guide][])
- Data serialization with [JSON][] (or see a [quick tutorial][])

### How do I connect to the 500px.com API?
The API is only available to authenticated clients. Clients should authenticate users using [OAuth 1.0a or 2.0][]. Once authenticated, you need to request a resource from one of the endpoints using [HTTP][]. Generally, reading any data is done through a request with GET method. If you want our server to create, update or delete a given resource, POST or PUT methods are required.

### What return formats do you support?
500px API currently returns data in [JSON](http://json.org/ "JSON") format.

### What kind of authentication is required?
Applications must identify themselves to access any resource. 
If your application only needs read-only access and does authenticate the user, **consumer_key** containing a valid Consumer Key parameter should be specified in the query string. Otherwise, [OAuth](https://github.com/500px/api-documentation/tree/master/authentication) or upload key authentication takes care of identifying the application as well as the user accessing the API.

### Is there a request rate limit?
There is no set rate limit, but we are monitoring API activity to make sure everyone can get their share of access. We may contact you or even temporarily disable your application if we find that your application is interfering with the system's stability. We may introduce a request rate limit in the future.

[HTTP protocol]: http://www.w3.org/Protocols/rfc2616/rfc2616.html
[REST software pattern]: http://en.wikipedia.org/wiki/Representational_State_Transfer
[OAuth]: http://oauth.net/core/1.0a/
[Beginner’s Guide]: http://hueniverse.com/oauth/
[JSON]: http://json.org
[quick tutorial]: http://www.webmonkey.com/2010/02/get_started_with_json/
[Register your application]: http://developers.500px.com/oauth_clients/new
[API Terms of Use]: https://github.com/500px/api-documentation/blob/master/basics/terms_of_use.md
[See if the concepts used by the API are familiar to you]: https://github.com/500px/api-documentation#what-do-i-need-to-know-before-i-start-using-the-api
[OAuth 1.0a or 2.0]: http://oauth.net/
[HTTP]: http://www.w3.org/Protocols/rfc2616/rfc2616.html
