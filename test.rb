
# https://api.instagram.com/v1/users/1582526975/media/recent/?access_token=1582526975.d32b73d.9578661346ed42e2b3369b9f65acbe45


#   client = Instagram.client(:access_token => "1582526975.d32b73d.9578661346ed42e2b3369b9f65acbe45")
#   user = client.user
#  client.user_recent_media
# # media_item.images.thumbnail.url


# host_path={host: "api.stackexchange.com", path: "/2.2/#{path}"}
# query_params={INSTAGRAM_CLIENT_ID: "d32b73dde5564a2aad9f6e6683314486", page: 1, pagesize: 100, order: "desc", sort: "activity", fromdate: "#{from_date}", todate: "#{to_date}", tagged: "ruby", site: "stackoverflow", filter: "!-*f(6rwhz2k1"}#this filter shows the total number of results in the hash

# uri=URI::HTTP.build(host_path)
# uri.query=URI.encode_www_form(query_params)
# response=Net::HTTP.get(URI(uri.to_s))
# data= JSON.parse(response)

# # Ruby libraries
# require 'net/http'
# require 'open-uri'

#problems:
#1. attribution: "null" throws errors. Sub it?

# are there more pages?
# check if pagination is empty hash
# response[:pagination].empty? # true for only 1 page or last page, false for more

# get the next 20 results: 
# response[:pagination][:next_url]

# check for errors:
# response[:meta][:code] #200 if good
# all photos of user:
#  response[:data][photo_i]

# tags from a photo:
#  response[:data][photo_i][:tags]

# is an item an image or a video?
# response[:data][photo_i][:type]

# lat longitude
# response[:data][photo_i][:location][:latitude]
# response[:data][photo_i][:location][:longitude]

# created_time
# response[:data][photo_i][:created_time] # since epoch
# #Time.at(created_time)= time object with date
# # Time.at(created_time).to_datetime = datetime object that allows manipulation of date
# #slight difference between conversions for timezone adjustments


# thumbnail of photo
# response[:data][photo_i][:images][:thumbnail][:url] #not all have thumbnails

# full size
# response[:data][photo_i][:images][:standard_resolution][:url]

# caption text
# response[:data][photo_i][:caption][:text]

# people in photo
# response[:data][photo_i][:users_in_photo][person_i][:user]
# {:username=>"kuruvilla.jimmy", :profile_picture=>"https://instagramimages-a.akamaihd.net/profiles/anonymousUser.jpg", :id=>"1582526975", :full_name=>"kuruvilla.jimmy"} 



a={
pagination: { },
meta: {
code: 200
},
data: [
{
attribution: "null",
tags: [ ],
type: "image",
location: {
latitude: 40.765215772,
name: "Belaire Diner",
longitude: -73.931430786,
id: 227470
},
comments: {
count: 0,
data: [ ]
},
filter: "Normal",
created_time: "1417550053",
link: "http://instagram.com/p/wHeZPJHuHB/",
likes: {
count: 0,
data: [ ]
},
images: {
low_resolution: {
url: "http://scontent-b.cdninstagram.com/hphotos-xaf1/t51.2885-15/10838475_1515405835383896_1252372040_a.jpg",
width: 306,
height: 306
},
thumbnail: {
url: "http://scontent-b.cdninstagram.com/hphotos-xaf1/t51.2885-15/10838475_1515405835383896_1252372040_s.jpg",
width: 150,
height: 150
},
standard_resolution: {
url: "http://scontent-b.cdninstagram.com/hphotos-xaf1/t51.2885-15/10838475_1515405835383896_1252372040_n.jpg",
width: 640,
height: 640
}
},
users_in_photo: [ ],
caption: {
created_time: "1417550053",
text: "Instagram! Am I doing this rite?",
from: {
username: "kuruvilla.jimmy",
profile_picture: "https://instagramimages-a.akamaihd.net/profiles/anonymousUser.jpg",
id: "1582526975",
full_name: "kuruvilla.jimmy"
},
id: "866795129663316418"
},
user_has_liked: false,
id: "866795128933507521_1582526975",
user: {
username: "kuruvilla.jimmy",
website: "",
profile_picture: "https://instagramimages-a.akamaihd.net/profiles/anonymousUser.jpg",
full_name: "kuruvilla.jimmy",
bio: "",
id: "1582526975"
}
},
{
attribution: "null",
tags: [ ],
type: "image",
location: {
latitude: 40.86194549,
name: "Planting Fields Arboretum",
longitude: -73.55450246,
id: 2255050
},
comments: {
count: 0,
data: [ ]
},
filter: "Normal",
created_time: "1417539405",
link: "http://instagram.com/p/wHKFb9HuFg/",
likes: {
count: 0,
data: [ ]
},
images: {
low_resolution: {
url: "http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/10838501_773152926071455_1394934_a.jpg",
width: 306,
height: 306
},
thumbnail: {
url: "http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/10838501_773152926071455_1394934_s.jpg",
width: 150,
height: 150
},
standard_resolution: {
url: "http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/10838501_773152926071455_1394934_n.jpg",
width: 640,
height: 640
}
},
users_in_photo: [
{
position: {
y: 0.48518518,
x: 0.41759259
},
user: {
username: "kuruvilla.jimmy",
profile_picture: "https://instagramimages-a.akamaihd.net/profiles/anonymousUser.jpg",
id: "1582526975",
full_name: "kuruvilla.jimmy"
}
}
],
caption: {
created_time: "1417539405",
text: "Planting fields on Sat",
from: {
username: "kuruvilla.jimmy",
profile_picture: "https://instagramimages-a.akamaihd.net/profiles/anonymousUser.jpg",
id: "1582526975",
full_name: "kuruvilla.jimmy"
},
id: "866705808990069090"
},
user_has_liked: false,
id: "866705807371067744_1582526975",
user: {
username: "kuruvilla.jimmy",
website: "",
profile_picture: "https://instagramimages-a.akamaihd.net/profiles/anonymousUser.jpg",
full_name: "kuruvilla.jimmy",
bio: "",
id: "1582526975"
}
}
]
}