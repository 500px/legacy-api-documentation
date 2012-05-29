# OAuth

    POST oauth/authorize

## Description
Allows a Consumer application to obtain an OAuth Request Token to request user authorization. This method fulfills **[Section 6.1][]** of the **[OAuth 1.0 authentication flow][]**. The method will use the currently logged in user as the account for access authorization and will request the user to log in if they have no active session with 500px.com.

***

## Requires authentication
OAuth Request Token received using **[request_token][]** method.

***

## Parameters

A valid OAuth request should be issued. You can provide parameters in Authorization HTTP-headers, query string, or body of the request. If you're using HTTP-header based OAuth, you shouldn't include <code>oauth_*</code> parameters in the POST body or query string.

- **oauth_token** _(required)_ — A Request Token received from **[request_token][]** method
- **oauth_callback** _(required)_ — A valid URL on the Consumer side the user should be redirected to once they authorize the request

***

## Return format
The user will be redirected to oauth_callback URL once they authorize the request. The request will contain two parameters:

- **oauth_token** — A Request Token issued by the Provider at the **[request_token][]** step
- **oauth_verifier** — The OAuth Verifier is a verification code tied to the Request Token. The OAuth Verifier and Request Token both must be provided in exchange for an Access Token.

***

## Errors

- **401 Invalid OAuth Request** — Request for the token was malformed or uses an unknown OAuth version

[Section 6.1]: http://oauth.net/core/1.0/#auth_step1
[OAuth 1.0 authentication flow]: http://oauth.net/core/1.0/#anchor9
[request_token]: https://github.com/500px/api-documentation/blob/master/authentication/POST_oauth_requesttoken.md