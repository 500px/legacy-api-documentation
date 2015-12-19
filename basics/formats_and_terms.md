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
- [User’s Friends’ Photos][Week], a collection of User’s Photos streams from all followings of a given user

### Special streams:
- [Editors’ Choice][], photos selected by 500px.com Editors, cached indefinitely

[Popular]: http://500px.com/popular
[Upcoming]: http://500px.com/upcoming
[Today]: http://500px.com/fresh/today
[Yesterday]: http://500px.com/fresh/yesterday
[Week]: http://500px.com/fresh/week
[User’s Photos]: http://500px.com/iansobolev
[Editors’ Choice]: http://500px.com/editors

***

## Image URLs and Image Sizes

You'll find the URLs to the image(s) for a photo in the `images` field in the returned JSON for a photo.  The images provided with our standard API access will be watermarked with the 500px logo and attribution. For non-watermarked images please contact sales@500px.com

**Important** - You must not alter the URLs returned by the API in any way.  Altered URLs will be rejected by our system when the image is loaded.  Instead, please use the `image_size` parameter to request the sizes your application needs.

500px has a number of preset image sizes.  Most API requests that return image URLs can be instructed to return the URLs for one or more specific sizes.  To retrieve the URL for a specific image size, include that size's ID in the query string of the request, using the `image_size` parameter:

```
GET /v1/photos?feature=popular&image_size=3
```

If you want to request multiple sizes, you can pass an array for `image_size` as well:
```
GET /v1/photos?feature=popular&image_size[]=3&image_size[]=2
```
which can equivalently be specified as:
```
GET /v1/photos?feature=popular&image_size=3,2
```

These are the standard cropped sizes:
<table id="image_sizes">
  <tr>
    <th>ID</th>
    <th>Dimensions</th>
  </tr>
  <tr><td>1</td><td>70px x 70px</td></tr>
  <tr><td>2</td><td>140px x 140px</td></tr>
  <tr><td>3</td><td>280px x 280px</td></tr>
  <tr><td>100</td><td>100px x 100px</td></tr>
  <tr><td>200</td><td>200px x 200px</td></tr>
  <tr><td>440</td><td>440px x 440px</td></tr>
  <tr><td>600</td><td>600px x 600px</td></tr>
</table>

These are the standard uncropped sizes:
<table id="image_sizes">
  <tr>
    <th>ID</th>
    <th>Dimensions</th>
  </tr>
  <tr><td>4</td><td>900px on the longest edge</td></tr>
  <tr><td>5</td><td>1170px on the longest edge</td></tr>
  <tr><td>6</td><td>1080px high</td></tr>
  <tr><td>20</td><td>300px high</td></tr>
  <tr><td>21</td><td>600px high</td></tr>
  <tr><td>30</td><td>256px on the longest edge</td></tr>
  <tr><td>1080</td><td>1080px on the longest edge</td></tr>
  <tr><td>1600</td><td>1600px on the longest edge</td></tr>
  <tr><td>2048</td><td>2048px on the longest edge</td></tr>
</table>
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
  <tr><td>26</td><td>Transportation <sup>New!</sup></td></tr>
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

## Gallery kinds

<table id="gallery_kinds">
  <tr>
    <th>ID</th>
    <th>Gallery Kinds</th>
    <th>Contents</th>
  </tr>
  <tr><td>0</td><td>General</td><td>Any photo on 500px</td></tr>
  <tr><td>1</td><td>Lightbox</td><td>Marketplace photos</td></tr>
  <tr><td>3</td><td>Portfolio<sup>*</sup></td><td>Photos displayed on the portfolio page</td></tr>
  <tr><td>4</td><td>Profile<sup>*</sup></td><td>Photos uploaded by the gallery owner</td></tr>
  <tr><td>5</td><td>Favorite</td><td>Photos favorited by the gallery owner via the old API.</td></tr>
</table>
<sub>* Can only contain photos uploaded by the gallery owner</sub>

## Photo object formats
Categories of photos may be specified by their ID or string name, depending on the API method.

### Short format
The short format of a Photo object includes the following data:

- **id** — ID of the photo, integer
- **name** — Title of the photo, string
- **description** — Description of the photo, string
- **camera** — Make and model of the camera this photo was made with, string
- **lens** — This photo’s camera lens information, string
- **focal\_length** — Focal length of the shot, string
- **iso** — ISO value of the shot, string
- **shutter\_speed** — Shutter speed value of the shot, string
- **aperture** — Aperture value of the shot, string
- **times\_viewed** - The number of views this photo has, integer
- **rating** — Rating of the photo, decimal
- **status** — Status of the photo in the system, integer. An active photo always has the status of 1.
- **created\_at** — Timestamp indicating time of photo creation, timestamp
- **category** — [Category][] of the photo, (short) integer
- **location** — A human-readable name of the location where the photo was taken, string
- **privacy** - Boolean value whether or not the community page (http://500px.com/photo/:id) of this photo is available.  A value of true means the page is not available.
- **latitude** — Latitude of the location where the photo was taken, decimal
- **longitude** — Longitude of the location where the photo was taken, decimal
- **taken\_at** — Timestamp of when the photo was taken, timestamp
- **for\_sale** - Boolean value whether or not the photo is for sale
- **width** - The width of the original, unresized photo, integer
- **height** - The height of the origin, unresized photo, integer
- **votes\_count** — Number of votes cast on this photo, integer
- **comments\_count** — Number of comments this photo has, integer
- **nsfw** - Boolean value whether the current photo is NSFW
- **sales_count** - The number of sales this photo has
- **highest_rating** - The highest rating this photo has had, decimal
- **highest_rating_date** - The date the highest rating was reached on, timestamp
- **license_type** - [License type][] of the photo, (short) integer
- **converted** - Boolean value indicating whether or not this photo has been converted, **deprecated**.
- **image\_url** — URL of the image, string, **deprecated**
- **images** - Array with images URL and sizes
- **user** — Author’s profile in [short format][], object
- **galleries_count** - Number of galleries this photo is present in, integer

[Category]: #categories
[License type]: #license_types

### Full format
The full format of a Photo object includes the following data:

- **id** — ID of the photo, integer
- **name** — Title of the photo, string
- **description** — Description of the photo, string
- **camera** — Make and model of the camera this photo was made with, string
- **lens** — This photo’s camera lens information, string
- **focal\_length** — Focal length of the shot, string
- **iso** — ISO value of the shot, string
- **shutter\_speed** — Shutter speed value of the shot, string
- **aperture** — Aperture value of the shot, string
- **times\_viewed** - The number of views this photo has, integer
- **rating** — Rating of the photo, decimal
- **status** — Status of the photo in the system, integer. An active photo always has the status of 1.
- **created\_at** — Timestamp indicating time of photo creation, timestamp
- **category** — [Category][] of the photo, (short) integer
- **location** — A human-readable name of the location where the photo was taken, string
- **privacy** - Boolean value whether or not the community page (http://500px.com/photo/:id) of this photo is available. A value of true means the page is not available.
- **latitude** — Latitude of the location where the photo was taken, decimal
- **longitude** — Longitude of the location where the photo was taken, decimal
- **taken\_at** — Timestamp of when the photo was taken, timestamp
- **for\_sale** - Boolean value whether or not the photo is for sale
- **width** - The width of the original, unresized photo, integer
- **height** - The height of the origin, unresized photo, integer
- **votes\_count** — Number of votes cast on this photo, integer
- **comments\_count** — Number of comments this photo has, integer
- **nsfw** - Boolean value whether the current photo is NSFW
- **sales_count** - The number of sales this photo has
- **highest_rating** - The highest rating this photo has had, decimal
- **highest_rating_date** - The date the highest rating was reached on, timestamp
- **license_type** - [License type][] of the photo, (short) integer
- **converted** - Boolean value indicating whether or not this photo has been converted, **deprecated**.
- **image\_url** — URL of the image, string, **deprecated**
- **images** - Array with images URL and sizes
- **user** — Author’s profile in [short format][], object
- **comments** - If requested, an array of comments.
- **store_download** - Boolean value indicating whether or not the photo is for sale as a digital download.
- **store_print** - Boolean value indicating whether or not the photo is for sale as a canvas print.
- **editors_choice** - Boolean value indicating whether or not the photo is in Editors' Choice.
- **feature** - The section of the site this photo appears under, string. Possible values are popular upcoming fresh_today fresh_yesterday fresh_week
- **galleries_count** - Number of galleries this photo is present in, integer

If you are authenticated when making the request. These additional fields will be returned:
- **voted** — Boolean value whether the current user has voted for this photo
- **purchased** — Boolean value whether the current user has bought this photo

***

## User object formats

### Short format
The short format of a User object includes the following data:

- **id** — ID of the user, integer
- **username** — Username, string
- **firstname** — First name, string
- **lastname** — Last name, string
- **fullname** — A combination of first and last names or a username that would naturally appear on the site, string
- **city** — City as specified in user's profile, string
- **country** — Country as specified in user's profile, string
- **userpic\_url** — Profile picture’s URL of the user, string
- **upgrade\_status** — Whether the user is a premium user, integer. Non-zero values identify premium users; a value of 2 identifies an Awesome user while a value of 1 identifies a Plus user. Other states may be added in the future, so write your parsers accordingly.
- **followers_count** — User followers count
- **affection** — Affection value, integer.


### Profile format
The profile format of a User object includes the following data:

- **id** — ID of the user, integer
- **username** — Username, string
- **firstname** — First name, string
- **lastname** — Last name, string
- **fullname** — A combination of first and last names or a username that would naturally appear on the site, string
- **sex** — Sex of the user, string. Values: 1 and 2 for male and female respectively, 0 if user refused to specify their sex.
- **city** — City as specified in user’s profile, string
- **state** — State as specified in user’s profile, string
- **country** — Country as specified in user’s profile, string
- **registration\_date** — Registration timestamp, timestamp
- **about** — User’s about text, timestamp
- **domain** - The host name of the user's portfolio, string
- **locale** — User’s preferred locale, string. Current values: <code>en, ru, de, ja, br, es</code>.
- **upgrade\_status** — Whether the user is a premium user, integer. Non-zero values identify premium users; a value of 2 identifies an Awesome user while a value of 1 identifies a Plus user. Other states may be added in the future, so write your parsers accordingly.
- **show\_nude** — Whether the user has content filter disabled, boolean.
- **userpic\_url** — Profile picture’s URL of the user, string
- **store\_on** - Whether the user has the store option enabled, boolean
- **contacts** — A dictionary of user’s contacts, object. Keys should be treated as provider names, and values as user IDs with given provider.
- **equipment** - A dictionary of a user's equipment. Possible keys are <code>camera, lens, misc</code>. Each key will have an array of values.
- **photos\_count** — Number of active photos posted by the user, integer.
- **galleries\_count** — Number of galleries visible on the user's profile, integer.
- **affection** — Affection value, integer.
- **friends\_count** — Number of people this user follows, integer.
- **followers\_count** — Number of people this user is being followed by, integer.
- **admin** - Boolean value that will be 1 if the user is a 500px team member.
- **avatars** - A dictionary of different avatar sizes. Keys are <code>default, large, small, tiny</code>. default is up to 300x300px, large is 100x100px, small is 50x50px, tiny is 30x30px.

If the user you are requesting is the currently authenticated user these additional fields will be returned:
- **email** - The user's email address.
- **upload\_limit** - The remaining upload limit this user has, integer
- **upload\_limit\_expiry** - The date at which additional uploads will be available, timestamp
- **upgrade\_expiry\_date** - The date at which the user's subscription will expire, timestamp
- **auth** - A dictionary of a user's social network authentications. Possible keys are <code>facebook, twitter, google_oauth2</code>. Each key will have a value of '1' as existing authentication or '0' as no authentication.

If you are authenticated these additional fields will be returned:
- **following** - A boolean value indicating whether or not you are following this user.

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
- **parent_id** - The ID of the comment that was replied to. If this value is null then the comment was not a reply to another comment, integer
- **flagged** - A boolean value indicating whether or not this comment was flagged for review.
- **rating** - The sum of the number of votes this comment has received, integer

If you are authenticated these additional attributes will be returned:

- **voted** - A boolean value indicating whether or not the currently authenticated user has voted on this comment.

***

## Gallery object formats

### Short format
The short format of a Gallery object includes the following data:

- **id** — ID of the gallery, integer
- **user_id** — ID of the user that owns the gallery, integer
- **name** — Title of the gallery, string
- **description** — Description of the gallery, string
- **subtitle** — A short (500 char.) blurb of the gallery, string
- **items_count** — Number of items in the gallery, integer
- **privacy** - Boolean value whether or not the gallery is private. A value of true means the gallery is private to the user
- **kind** - Indicates the **[gallery kind][]**, integer
- **created\_at** — Timestamp indicating time the gallery was created, timestamp
- **updated\_at** — Timestamp indicating time the gallery was updated, timestamp
- **cover_photo** - Array containing a JSON hash of the cover photo's id, size, url, and nsfw flag
- **custom_path** - Custom path of the gallery, string
- **last_added_photo** _(optional)_ - Photo that was last added to the gallery, in **[short format](https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#short-format)**
- **user** _(optional)_ - User who owns the gallery, in **[short format][]**

### Full format

The full format of a Gallery object includes the following data:

- **id** — ID of the gallery, integer
- **user_id** — ID of the user that owns the gallery, integer
- **name** — Title of the gallery, string
- **description** — Description of the gallery, string
- **cover_photo** - Array containing a JSON hash of the cover photo's id, size, url, and nsfw flag
- **subtitle** — A short (500 char.) blurb of the gallery, string
- **items_count** — Number of items in the gallery, integer
- **privacy** - Boolean value whether or not the gallery is private. A value of true means the gallery is private to the user
- **kind** - Indicates the **[gallery kind][]**, integer
- **created\_at** — Timestamp indicating time the gallery was created, timestamp
- **updated\_at** — Timestamp indicating time the gallery was updated, timestamp
- **custom_path** - A slug for the gallery url, string
- **editors_choice** - Boolean value indicating whether the gallery has been featured in editor's choice
- **feature** - Name of stream where gallery has been featured. Values can be either 'popular' or 'fresh'
- **featured_at** - Timestamp indicating when gallery was featured
- **token** - Token signature for a private gallery url. Only returned if request is made by the gallery owner
- **user** _(optional)_ - User who owns the gallery, in **[short format][]**

[Category]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#categories
[short format]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#short-format-1
[gallery kind]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#gallery-kinds
[License type]: https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#license_types
