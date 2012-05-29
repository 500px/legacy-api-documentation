# PHP

There is an extensive wiki on of OAuth and xAuth authentication over at [oauth-php-wiki][] on Google Code. 500px.com oAuth is actually quite similar to Twitter's. Appropriating [@abraham's][] [TwitterOAuth][] library give you a head start.

In <code>lib/TwitterOAuth.php</code> make the following adjustments:
    
    $host = 'https://api.500px.com/v1/

And set up the URLs:

    /* Set API URLS */
    function accessTokenURL()  { return 'https://api.500px.com/v1/oauth/access_token'; }
    function authenticateURL() { return 'https://api.500px.com/v1/oauth/authorize'; }
    function authorizeURL()    { return 'https://api.500px.com/v1/oauth/authorize'; }
    function requestTokenURL() { return 'https://api.500px.com/v1/oauth/request_token'; }

Change the example index.php from:

    /* If method is set change API call made. Test is called by default. */
    #$content = $connection->get('account/verify_credentials');

To:

    /* Retrieve all photos in category Journalism that were uploaded today */
    $content  = $connection->get('photos', array('feature' => 'fresh_today', 'only' => 'Journalism'));

[oauth-php-wiki]: http://example.com/  "OAuth - Consumer and Server library for PHP"
[@abraham's]: http://twitter.com/abraham "@abraham"
[twitteroauth]: https://github.com/abraham/twitteroauth "TwitterOAuth"