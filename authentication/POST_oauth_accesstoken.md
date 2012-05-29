# OAuth

    POST oauth/access_token

## Description
Allows a Consumer application to obtain an OAuth Request Token to request user authorization. This method fulfills [Section 6.1][] of the [OAuth 1.0 authentication flow][].

The OAuth access token may also be used for xAuth operations.

***

## Requires authentication
OAuth Request Token received using the **[request_token][]** method. Requires **oauth_verifier** when using **[authorize](https://github.com/500px/api-documentation/blob/master/authentication/POST_oauth_authorize.modificator)** in authentication workflow.

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

[Section 6.1]: http://oauth.net/core/1.0/#auth_step1
[OAuth 1.0 authentication flow]: http://oauth.net/core/1.0/#anchor9
[request_token]: https://github.com/500px/api-documentation/blob/master/authentication/POST_oauth_requesttoken.md