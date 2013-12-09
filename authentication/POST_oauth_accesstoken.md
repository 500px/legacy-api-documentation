# OAuth

    POST oauth/access_token

## Description
Allows a Consumer application to exchange an OAuth Request Token for an OAuth Access Token, which can be used to access protected resources on behalf of the user. This method fulfills [Section 6.3][] of the [OAuth 1.0 authentication flow][].

The OAuth Access Token may also be used for xAuth operations.

***

## Requires authentication
OAuth Request Token received using the [request_token][] method. Requires oauth_verifier when using [authorize](https://github.com/500px/api-documentation/blob/master/authentication/POST_oauth_authorize.modificator) in authentication workflow.

Note that this request must be signed with a Request Token even when using the xAuth workflow.

***

## Parameters
Standard oAuth workflow:

- **oauth_callback** _(required)_ — A valid URL on the Consumer side the user should be redirected to once they authorize the request.

xAuth workflow:

- **x_auth_mode** _(required)_ — xAuth modificator. Recognized values: 'client_auth'.
- **x_auth_username** _(required)_ — The username or email address of the user to obtain a token for.
- **x_auth_password** _(required)_ — The password of the user for which to obtain a token for.

***

## Return format
Text, containing an query string-encoded list of OAuth parameters.

- **oauth_token** — An Access Token
- **oauth_token_secret** — An Access Token's Secret

***

## Errors

- **401 Invalid OAuth Request** — Request for the token was malformed or uses an unknown OAuth version

[Section 6.3]: http://oauth.net/core/1.0/#auth_step3
[OAuth 1.0 authentication flow]: http://oauth.net/core/1.0/#anchor9
[request_token]: https://github.com/500px/api-documentation/blob/master/authentication/POST_oauth_requesttoken.md
