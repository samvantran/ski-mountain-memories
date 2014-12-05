# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Mountain.create(lat: 39.473984, lng: -106.084066, zoom_level: 16, name: "Breckenridge, CO")
Mountain.create(lat: 40.704933, lng: -74.013758, zoom_level: 16, name: "Bowling Green Mountain, NY")
Visual.create(lat: 40.704536, lng: -74.014711, trip_id: 1, thumbnail_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Wpdms_20020923b_bowling_green_composite.jpg/250px-Wpdms_20020923b_bowling_green_composite.jpg', standard_url: "haha")
Visual.create(lat: 40.705585, lng: -74.013434, trip_id: 1, thumbnail_url: 'http://revolutionaryday.com/usroute9w/nyc/bwowlinggrn.jpg', standard_url: "laha")
Visual.create(lat: 39.470746, lng: -106.083668, trip_id: 2, thumbnail_url: 'http://www.turnagaintimes.com/current%20issue/2010-02-18/images/cross-country-trails.jpg', standard_url: "lala")


