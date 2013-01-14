# Formats and Terms

[500px.com][] allows discovery of the photography uploaded by users in a
number of ways. An essential part of presentation is photo streams.
Accessing the following streams is possible though means of the API:

[500px.com]: http://500px.com/

***

## 500px Photo Terms

### Rating-based streams
- [Popular][], photos with a rating over 80, sorted by rating, cached for 5 minutes
- [Upcoming][], photos with a rating over 60, sorted by creation timestamp, cached for 5 minutes

### Time-based (Fresh) streams:
- [Today][], photos created since midnight (EST time), cached for 60 seconds
- [Yesterday][], photos created between last day’s midnight and past midnight (EST time), cached until the end of hour 
- [Week][], photos created in the past 7 days, excluding today, cached until the end of hour

### User-based streams:
- [User’s Photos][], all active public photos of a given user
- [User’s Favorites][], all photos a user has added to their favourites
- [User’s Friends’ Photos][Week], a collection of User’s Photos streams from all followings of a given user

### Special streams:
- [Editors’ Choice][], photos selected by 500px.com Editors, cached indefinitely

[Popular]: http://500px.com/popular
[Upcoming]: http://500px.com/upcoming
[Today]: http://500px.com/fresh/today
[Yesterday]: http://500px.com/fresh/yesterday
[Week]: http://500px.com/fresh/week
[User’s Photos]: http://500px.com/iansobolev
[User’s Favorites]: http://500px.com/iansobolev/favorites
[Editors’ Choice]: http://500px.com/editors

***

## Categories
Categories of photos may be specified by their ID or string name, depending on the API method.

<table id="categories">
  <tr>
    <th>ID</th>
    <th>Category</th>
  </tr>
  <tr><td>0</td><td>Uncategorized</td></tr>
  <tr><td>10</td><td>Abstract</td></tr>
  <tr><td>11</td><td>Animals</td></tr>
  <tr><td>5</td><td>Black and White</td></tr>
  <tr><td>1</td><td>Celebrities</td></tr>
  <tr><td>9</td><td>City and Architecture</td></tr>
  <tr><td>15</td><td>Commercial</td></tr>
  <tr><td>16</td><td>Concert</td></tr>
  <tr><td>20</td><td>Family</td></tr>
  <tr><td>14</td><td>Fashion</td></tr>
  <tr><td>2</td><td>Film</td></tr>
  <tr><td>24</td><td>Fine Art</td></tr>
  <tr><td>23</td><td>Food</td></tr>
  <tr><td>3</td><td>Journalism</td></tr>
  <tr><td>8</td><td>Landscapes</td></tr>
  <tr><td>12</td><td>Macro</td></tr>
  <tr><td>18</td><td>Nature</td></tr>
  <tr><td>4</td><td>Nude</td></tr>
  <tr><td>7</td><td>People</td></tr>
  <tr><td>19</td><td>Performing Arts</td></tr>
  <tr><td>17</td><td>Sport</td></tr>
  <tr><td>6</td><td>Still Life</td></tr>
  <tr><td>21</td><td>Street</td></tr>
  <tr><td>26</td><td>Transporation <sup>New!</sup></td></tr>
  <tr><td>13</td><td>Travel</td></tr>
  <tr><td>22</td><td>Underwater</td></tr>
  <tr><td>27</td><td>Urban Exploration <sup>New!</sup></td></tr>
  <tr><td>25</td><td>Wedding <sup>New!</sup></td></tr>
</table>

## License Types
500px currently supports these types of licenses, more details can be found at http://500px.com/creativecommons

<table id="license_types">
  <tr>
    <th>ID</th>
    <th>License Type</th>
  </tr>
  <tr><td>0</td><td>Standard 500px License</td></tr>
  <tr><td>1</td><td>Creative Commons License Non Commercial Attribution</td></tr>
  <tr><td>2</td><td>Creative Commons License Non Commercial No Derivatives</td></tr>
  <tr><td>3</td><td>Creative Commons License Non Commercial Share Alike</td></tr>
  <tr><td>4</td><td>Creative Commons License Attribution</td></tr>
  <tr><td>5</td><td>Creative Commons License No Derivatives</td></tr>
  <tr><td>6</td><td>Creative Commons License Share Alike</td></tr>
</table>

## Photo object formats
Categories of photos may be specified by their ID or string name, depending on the API method.

### Short format
The short format of a Photo object includes the following data:

- **id** — ID of the photo, integer
- **name** — Title of the photo, string
- **description** — Description of the photo, string
- **category** — [Category][] of the photo, (short) integer
- **image\_url** — URL of the image, string
- **images** — Array with images URL and sizes
- **rating** — Rating of the photo, decimal
- **votes\_count** — The number of votes cast on this photo, integer
- **favorites\_count** — The number of users that have this photo in favorites, integer
- **comments\_count** — The number of comments on this photo, integer
- **times\_viewed** — The number of times this photo has been viewed, integer
- **created\_at** — Timestamp indicating time of photo creation, timestamp
- **user** — Author’s profile in [short format][], object

Values returned on **include_store** request:
- 'store_download' — Boolean value if the picture is avaliable for HD Download purchase.
- 'store_print' — Boolean value if the picture is avaliable for Canvas print purchase.

Values returned on **include_states** and authenticated request.
- 'voted' — Boolean value whether the current user has voted for this photo
- 'favorited' — Boolean value whether the current user has favorited this photo
- 'purchased' — Boolean value whether the current user has bought this photo

[Category]: #categories
[License type]: #license_types

### Full format
The full format of a Photo object includes the following data:

- **id** — ID of the photo, integer
- **name** — Title of the photo, string
- **description** — Description of the photo, string
- **license_type** - [License Type][] of the photo, (short) integer
- **category** — [Category][] of the photo, (short) integer
- **image\_url** — URL of the image, string
- **votes\_count** — Number of votes cast on this photo, integer
- **favorites\_count** — Number of times this photo was added as a favorite on the website, integer
- **comments\_count** — Number of comments this photo has, integer
- **rating** — Rating of the photo, decimal
- **created\_at** — Timestamp indicating time of photo creation, timestamp
- **status** — Status of the photo in the system, integer. An active photo always has the status of 1.
- **user** — Author’s profile in [short format][], object
- **camera** — Make and model of the camera this photo was made with, string
- **lens** — This photo’s camera lens information, string
- **aperture** — Aperture value of the shot, string
- **focal\_length** — Focal length of the shot, string
- **iso** — ISO value of the shot, string
- **shutter\_speed** — Shutter speed value of the shot, string
- **taken\_at** — Timestamp of when the photo was taken, timestamp
- **location** — A human-readable name of the location where the photo was taken, string
- **latitude** — Latitude of the location where the photo was taken, decimal
- **longitude** — Longitude of the location where the photo was taken, decimal


Values returned on **include_store** request:
- 'store_download' — Boolean value if the picture is avaliable for HD Download purchase.
- 'store_print' — Boolean value if the picture is avaliable for Canvas print purchase.

Values returned on **include_states** and authenticated request.
- 'voted' — Boolean value whether the current user has voted for this photo
- 'favorited' — Boolean value whether the current user has favorited this photo
- 'purchased' — Boolean value whether the current user has bought this photo


***

## User object formats

### Short format
The short format of a User object includes the following data:

- **id** — ID of the user, integer
- **username** — Username, string
- **firstname** — First name, string
- **lastname** — Last name, string
- **city** — City as specified in user's profile, string
- **country** — Country as specified in user's profile, string
- **upgrade_status** — Whether the user is a premium user, integer. Non-zero values identify premium users; a value of 2 identifies an Awesome user while a value of 1 identifies a Plus user. Other states may be added in the future, so write your parsers accordingly.

### Profile format
The profile format of a User object includes the following data:

- **id** — ID of the user, integer
- **username** — Username, string
- **firstname** — First name, string
- **lastname** — Last name, string
- **fullname** — A combination of first and last names or a username that would naturally appear on the site, string
- **userpic\_url** — Profile picture’s URL of the user, string
- **sex** — Sex of the user, string. Values: 1 and 2 for male and female respectively, 0 if user refused to specify their sex.
- **city** — City as specified in user’s profile, string
- **state** — State as specified in user’s profile, string
- **country** — Country as specified in user’s profile, string
- **registration\_date** — Registration timestamp, timestamp
- **about** — User’s about text, timestamp
- **upgrade\_status** — Whether the user is a premium user, integer. Non-zero values identify premium users.
- **domain** — This user’s portfolio’s domain (hostname), string
- **fotomoto\_on** — Whether the user has the store option enabled, boolean
- **locale** — User’s preferred locale, string. Current values: <code>'en', 'ru', 'de', 'br'</code>.
- **show\_nude** — Whether the user has content filter disabled, boolean.
- **friends\_count** — Number of people this user follows, integer.
- **followers\_count** — Number of people this user is being followed by, integer.
- **photos\_count** — Number of active photos posted by the user, integer.
- **in\_favorites\_count** — Number of times any photo of the user was added to favorites, integer.
- **affection** — Affection value, integer.
- **contacts** — A dictionary of user’s contacts, object. Keys should be treated as provider names, and values as user IDs with given provider.

***

## Blog Post object formats

### Short format
The short format of a Blog Post object includes the following data:

- **id** — ID of the blog post, integer
- **title** — Title of the blog post, string
- **created\_at** — Timestamp indicating time the blog post was created, timestamp
- **user** — Author’s profile in [short format][], object

### Full format
The full format of a Blog Post object includes the following data:

- **id** — ID of the blog post, integer
- **longitude** — Longitude attached to the blog post, string
- **latitude** — Latitude attached to the blog post, string
- **title** — Title, string
- **body** — Content of post, string
- **tags** — Comma separated list of tags, string
- **created\_at** — Timestamp indicating time the blog post was created, timestamp
- **user** — Author’s profile in [short format][], object
- **photos** — A list of photos given in [short format][], object

***

## Comment object formats
The profile format of a User object includes the following data:

### Full format
The full format of a Comment object includes the following data:

- **id** — ID of the comment, integer
- **body** — Content of the comment, string
- **to_whom_user_id** — To which user the comment was made, string
- **user_id** — User ID of author of the comment, string
- **created_at** — Timestamp indicating time the comment was created, timestamp
- **user** — Author's profile in [short format][], object

[Category]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#categories
[short format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#short-format-1
