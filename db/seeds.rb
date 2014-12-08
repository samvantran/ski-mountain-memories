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


Visual.create(time_taken: 1113111118111,lat: 40.704536, lng: -74.014711, trip_id: 1,thumbnail_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Wpdms_20020923b_bowling_green_composite.jpg/250px-Wpdms_20020923b_bowling_green_composite.jpg', standard_url: 'http://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Wpdms_20020923b_bowling_green_composite.jpg/250px-Wpdms_20020923b_bowling_green_composite.jpg')
Visual.create(time_taken: 11411111311,lat: 40.705585, lng: -74.013434, trip_id: 1, thumbnail_url: 'http://revolutionaryday.com/usroute9w/nyc/bwowlinggrn.jpg', standard_url: 'http://revolutionaryday.com/usroute9w/nyc/bwowlinggrn.jpg')
Visual.create(lat: 39.470746, lng: -106.083668, trip_id: 2, standard_url: 'http://mtnweekly.com/wp-content/uploads/2010/11/2010-Breck-Opening-Day-SM-014-websize.jpg', thumbnail_url: 'http://www.turnagaintimes.com/current%20issue/2010-02-18/images/cross-country-trails.jpg')
Visual.create(time_taken: 1133341115111,lat: 39.466874, lng: -106.080028, trip_id: 2, thumbnail_url: 'http://www.turnagaintimes.com/current%20issue/2010-02-18/images/cross-country-trails.jpg', standard_url: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSBbU1XiZj_pRw5gUrUuReEvcz_QVKs3jtuvZn5FTU3LMM9wakP', thumbnail_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcVW-e67sjdlvurIH9ZSQ80jDY-6FI0aCfOFQZoEO6LjzheC1m')

Visual.create(trip_id: 1, 
 media_type: "image", 
 time_taken: 1418065411, 
 thumbnail_url: "http://scontent-a.cdninstagram.com/hphotos-xaf1/t5...", 
 standard_url: "http://scontent-a.cdninstagram.com/hphotos-xaf1/t5...", 
 caption: "#instago #instadaily #style #webstagram #look #ins...", 
 lat: 34.7666428, 
 lng: 32.4466561, 
 username: "ifigenia_iakovidou", 
 ig_id: 1488588147, 
 profile_pic: "https://igcdn-photos-a-a.akamaihd.net/hphotos-ak-xaf1/10844233_1553867984824896_567688064_a.jpg", 
 created_at: "2014-12-08 19:03:31", 
 updated_at: "2014-12-08 19:03:31")

Visual.create(
 trip_id: 1, 
 media_type: "image", 
 time_taken: 1371910895, 
 thumbnail_url: "http://scontent-a.cdninstagram.com/hphotos-xpa1/ou...", 
 standard_url: "http://scontent-a.cdninstagram.com/hphotos-xpa1/ou...", 
 caption: "#fun #sun #sea #blue #paphos #cyprus #kypros #hear...", 
 lat: 34.855165429, 
 lng: 32.364132887, 
 username: "turb0_85", 
 ig_id: 342264000, 
 profile_pic: "https://igcdn-photos-a-a.akamaihd.net/hphotos-ak-xaf1/10844233_1553867984824896_567688064_a.jpg", 
 created_at: "2014-12-08 19:03:31", 
 updated_at: "2014-12-08 19:03:31")