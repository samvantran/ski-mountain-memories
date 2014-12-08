# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Mountain.create(lat: 39.47, lng: -106.07, zoom_level: 16, name: "Breckenridge, CO")
Mountain.create(lat: 40.704933, lng: -74.013758, zoom_level: 16, name: "Bowling Green Mountain, NY")
Mountain.create(lat: 40.7061700, lng: -73.8357330, zoom_level: 16, name: "Jimmy's House")


Visual.create(time_taken: 1231323123,lat: 40.704536, lng: -74.014711, trip_id: 1,thumbnail_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Wpdms_20020923b_bowling_green_composite.jpg/250px-Wpdms_20020923b_bowling_green_composite.jpg', standard_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Wpdms_20020923b_bowling_green_composite.jpg/250px-Wpdms_20020923b_bowling_green_composite.jpg')
Visual.create(time_taken: 2434535656345,lat: 40.705585, lng: -74.013434, trip_id: 1, thumbnail_url: 'http://revolutionaryday.com/usroute9w/nyc/bwowlinggrn.jpg', standard_url: 'http://revolutionaryday.com/usroute9w/nyc/bwowlinggrn.jpg')
Visual.create(lat: 39.470746, lng: -106.083668, trip_id: 2, standard_url: 'http://mtnweekly.com/wp-content/uploads/2010/11/2010-Breck-Opening-Day-SM-014-websize.jpg', thumbnail_url: 'http://www.turnagaintimes.com/current%20issue/2010-02-18/images/cross-country-trails.jpg')
Visual.create(time_taken: 234234345234,lat: 39.466874, lng: -106.080028, trip_id: 2, thumbnail_url: 'http://www.turnagaintimes.com/current%20issue/2010-02-18/images/cross-country-trails.jpg', standard_url: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSBbU1XiZj_pRw5gUrUuReEvcz_QVKs3jtuvZn5FTU3LMM9wakP', thumbnail_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcVW-e67sjdlvurIH9ZSQ80jDY-6FI0aCfOFQZoEO6LjzheC1m')

