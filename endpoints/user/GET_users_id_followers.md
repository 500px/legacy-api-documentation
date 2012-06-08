# User Resources

    GET users/:id/followers

## Description
Returns a list of users who follow the specified user.

***

## Requires authentication
* A valid Consumer Key must be provided in **consumer_key** parameter.
* Alternatively, a valid **[OAuth][]** request with an authorized Access Token will be accepted.

***

## Parameters

- **id** _(required)_ — ID of the user.
- **page** — Return the specified page of the resource. Page numbering is 1-based.

***

## Return format
A JSON array with keys:

- **followers_count** — Total number of followers.
- **followers_pages** — The total number of pages available in this resource.
- **page** — Number of the page currently being returned.
- **followers** — An indexed array of User objects in **[short format][]**.

***

## Errors
All known errors cause the resource to return HTTP error code header together with a JSON array containing at least 'status' and 'error' keys describing the source of error.

- **403 Forbidden** — The user requested has been disabled.
- **404 Not Found** — User does not exist in our database.

***

## Example
**Request**

    http://500px.com/api/users/34/friends.json

**Return**
    {
        followers_count: 10,
        followers_pages: 1,
        page: 1,
        followers: [
            {
                id: 827595,
                username: "voldemarpetruskauskus",
                firstname: "Voldemar",
                lastname: "Petruskauskus",
                city: "",
                country: "",
                fullname: "Voldemar Petruskauskus",
                userpic_url: "/graphics/userpic.png",
                upgrade_status: 0
            },
            {
                id: 769630,
                username: "AkaokA",
                firstname: "Eric",
                lastname: "Akaoka",
                city: "Toronto",
                country: "Canada",
                fullname: "Eric Akaoka",
                userpic_url: "http://acdn.500px.net/769630/b2323b18e22bd4ef819daf176b17cc1b2f8a5398/1.jpg?60",
                upgrade_status: 2
            },
            {
                id: 720704,
                username: "Kimjasony",
                firstname: "Jason",
                lastname: "Kim",
                city: "",
                country: "",
                fullname: "Jason Kim",
                userpic_url: "/graphics/userpic.png",
                upgrade_status: 0
            },
            {
                id: 457180,
                username: "mgcirillo",
                firstname: "Mike",
                lastname: "Cirillo",
                city: "Toronto",
                country: "Canada",
                fullname: "Mike Cirillo",
                userpic_url: "http://acdn.500px.net/457180/bcbec7f69f5275d5ecf189bc05f07ab2560b2b22/1.jpg?0",
                upgrade_status: 2
            },
            {
                id: 355445,
                username: "arthurnn",
                firstname: "Arthur",
                lastname: "Neves",
                city: "Toronto",
                country: "Canada",
                fullname: "Arthur Neves",
                userpic_url: "http://acdn.500px.net/355445/3bc1756f63dc4f7538edb03dd9e4838f066980ff/1.jpg?108",
                upgrade_status: 2
            },
            {
                id: 224511,
                username: "tomcreighton",
                firstname: "Tom",
                lastname: "Creighton",
                city: "Toronto",
                country: "Canada",
                fullname: "Tom Creighton",
                userpic_url: "http://acdn.500px.net/224511/a02cb895aa9f0e4578f57ff69737342142a1e177/1.jpg?127",
                upgrade_status: 2
            },
            {
                id: 12150,
                username: "MaksimPo",
                firstname: "Maksim",
                lastname: "p.",
                city: "tallinn",
                country: "estonia",
                fullname: "Maksim p.",
                userpic_url: "http://acdn.500px.net/12150/7ea4d5dddd395535609770280fdc02e088242de6/1.jpg?127",
                upgrade_status: 0
            },
            {
                id: 223,
                username: "alexindigo",
                firstname: "Alex",
                lastname: "Indigo",
                city: "Palo Alto",
                country: "United States",
                fullname: "Alex Indigo",
                userpic_url: "http://acdn.500px.net/223.jpg",
                upgrade_status: 0
            },
            {
                id: 2,
                username: "oleggutsol",
                firstname: "Oleg",
                lastname: "Gutsol",
                city: "Toronto",
                country: "Canada",
                fullname: "Oleg Gutsol",
                userpic_url: "http://acdn.500px.net/2/3aa7abe3aebc904c575c504e91fde4bb9f8baab9/1.jpg?11",
                upgrade_status: 2
            },
            {
                id: 1,
                username: "tchebotarev",
                firstname: "Evgeny",
                lastname: "Tchebotarev",
                city: "Toronto",
                country: "Canada",
                fullname: "Evgeny Tchebotarev",
                userpic_url: "http://acdn.500px.net/1/34059c97bf3c79f4923cd083756e6a8d726fa956/1.jpg?64",
                upgrade_status: 2
            }
        ]
    }

[OAuth]: https://github.com/500px/api-documentation/tree/master/authentication
[short format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#short-format-1