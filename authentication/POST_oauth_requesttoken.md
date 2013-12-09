# OAuth

    POST oauth/request_token

## Description
Allows a Consumer application to obtain an OAuth Request Token to request user authorization. This method fulfills [Section 6.1][] of the [OAuth 1.0 authentication flow][].

***

## Requires authentication
False

***

## Parameters

A valid OAuth request should be issued. You can provide parameters in Authorization HTTP-headers, query string, or body of the request. If you're using HTTP-header based OAuth, you shouldn't include oauth_* parameters in the POST body or query string.

- **oauth_callback** _(required)_ — A valid URL on the Consumer side the user should be redirected to once they authorize the request.

***

## Return format
Text, containing an query string-encoded list of OAuth parameters.

- **oauth_token** — A Request Token
- **oauth_token_secret** — A Request Token's Secret

***

## Errors

- **401 Invalid OAuth Request** — Request for the token was malformed or uses an unknown OAuth version

[Section 6.1]: http://oauth.net/core/1.0/#auth_step1
[OAuth 1.0 authentication flow]: http://oauth.net/core/1.0/#anchor9
