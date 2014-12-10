# Ski Mountain Memories

## Description

A frequent problem while enjoying snow sports is that all the great pictures taken during the trip look very similar due to the surroundings. Ski Mountain Memories attempts to provide context for those photographs by using geolocation data pulled from your submissions to Instagram and plotting them on a map. SMM also allows you to share your trip photos and map with friends so that the party you are with can enjoy live updates about the mountain, and friends who are not present can be jealous.

## Background

Why did you want to make this app? What was your development process
like?

## Features

- SMM generates an easy to remember hashtag to share with friends and associates the hashtag with a particular trip in our Postgres database
- SMM uses the Instagram API to create a subscription to that hashtag, and when it recieves a push update to the hashtag, inserts a new media object into the database
- SMM uses the Google Maps API to draw a map of the particular mountain selected, and Javascript to place and update markers for each of the photos associated with a hashtag
- SMM can also be used visualize any hashtag's occurences live on a map 
- SMM is hosted on Heroku (Unicorn web server with New Relic for monitoring), Ruby on Rails powers the server side and JQuery handles client side interactions

## Development/Contribution

This is a hobby app but we would love to see it used by groups going on any type of trip. That means there are a lot of ways to improve the app and if you'd like to help, we'd greatly appreciate any pull requests!

## Future

What features are you currently working on? Only mention things that you
actually are implementing. No pie-in-the-sky-never-gonna-happen stuff.

## Awesome Team

[Jimmy Kuruvilla](https://github.com/JimmyKuruvilla)
[Blake DeBoer](https://github.com/blakedeboer)

## License

Ski Mountain Memories is MIT Licensed. See LICENSE for details.