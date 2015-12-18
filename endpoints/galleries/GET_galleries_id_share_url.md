# Galleries Resources

```
GET users/:user_id/galleries/:id/share_url
```

# Description

Returns a sharable private URL for the given gallery.

# Requires authentication
* Requires a valid **[OAuth][]** request with an authorized Access Token.

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication

# Parameters

None

# Return format

```json
{
  "share_url" : "g/<some token>"
}
```

# Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **404 Not Found** — The gallery you are requesting does not exist, or is private (and you are not its owner)
