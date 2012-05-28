# 500px API

500px API provides programmatic access to 500px functionality and content. Version 1 of the API is limited to the essentials of the website's functionality: viewing feature streams, photo information and comments, as well as user profiles.

The API is [REST API](http://en.wikipedia.org/wiki/Representational_State_Transfer "RESTful") and uses [OAuth](http://oauth.net/ "OAuth") 1.0a and 2.0 for user authentication purposes. Currently, return format for all endpoints is [JSON](http://json.org/ "JSON").

## Checklist
* See if the concepts used by the API are familiar to you
* Familiarize yourself with API functionality
* Read the 500px API Terms of Use
* Register your application and get OAuth consumer key and secret
* Hack away

***

## FAQ
### What do I need to know before I start using the API?
Got rust on your skills? No worries. Here are the docs you might need to get started:

- [HTTP protocol][]
- [REST software pattern][]
- Authentication with [OAuth][] (or the official [Beginner’s Guide][])
- Data serialization with [JSON][] (or see a [quick tutorial][])

[HTTP protocol]: http://www.w3.org/Protocols/rfc2616/rfc2616.html
[REST software pattern]: http://en.wikipedia.org/wiki/Representational_State_Transfer
[OAuth]: http://oauth.net/core/1.0a/
[Beginner’s Guide]: http://hueniverse.com/oauth/
[JSON]: http://json.org
[quick tutorial]: http://www.webmonkey.com/2010/02/get_started_with_json/

### How do I connect to the 500px.com API?
The API is only available to authenticated clients. Clients should authenticate users using OAuth 1.0a or 2.0. Once authenticated, you need to request a resource from one of the endpoints using HTTP. Generally, reading any data is done through a request with GET method. If you want our server to create, update or delete a given resource, POST or PUT methods are required.

### What return formats do you support?
500px API currently returns data in [JSON](http://json.org/ "JSON") format.

### What kind of authentication is required?
Applications must identify themselves to access any resource. 
If your application only needs read-only access and does authenticate the user, **consumer_key** containing a valid Consumer Key parameter should be specified in the query string. Otherwise, OAuth or upload key authentication takes care of identifying the application as well as the user accessing the API.

### Is there a request rate limit?
There is no set rate limit, but we are monitoring API activity to make sure everyone can get their share of access. We may contact you or even temporarily disable your application if we find that your application is interfering with the system's stability. We may introduce a request rate limit in the future.