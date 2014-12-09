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


Visual.create( 
    id: 101, 
    trip_id: 2, 
    media_type: "image", 
    time_taken: 1418065120, 
    thumbnail_url: "http://scontent-b.cdninstagram.com/hphotos-xfa1/t5...", 
    standard_url: "http://scontent-b.cdninstagram.com/hphotos-xfa1/t51.2885-15/10832171_369043849929769_1177218010_n.jpg", 
    caption: "MCM #selfie #nofilter @TagsForLikes #TagsForLikes ...", 
    lat: nil, 
    lng: nil, 
    username: "thecarriehente16", 
    ig_id: 233214098, 
    profile_pic: "https://igcdn-photos-d-a.akamaihd.net/hphotos-ak-x...", 
    created_at: "2014-12-08 18:58:41", 
    updated_at: "2014-12-08 18:58:41") 

Visual.create( 
    id: 102, 
    trip_id: 2, 
    media_type: "image", 
    time_taken: 1417211753, 
    thumbnail_url: "http://scontent-b.cdninstagram.com/hphotos-xfp1/t5...", 
    standard_url: "http://scontent-b.cdninstagram.com/hphotos-xfp1/t51.2885-15/10802965_568078526671594_319595437_n.jpg", 
    caption: "...", 
    lat: nil, 
    lng: nil, 
    username: "pirotin", 
    ig_id: 1127306559, 
    profile_pic: "https://igcdn-photos-c-a.akamaihd.net/hphotos-ak-x...", 
    created_at: "2014-12-08 18:58:41", 
    updated_at: "2014-12-08 18:58:41") 

Visual.create( 
    id: 103, 
    trip_id: 2, 
    media_type: "image", 
    time_taken: 1418065121, 
    thumbnail_url: "http://scontent-b.cdninstagram.com/hphotos-xaf1/t5...", 
    standard_url: "http://scontent-b.cdninstagram.com/hphotos-xaf1/t51.2885-15/10817575_999832336697510_1080269042_n.jpg", 
    caption: "#selfie #nofilter @TagsForLikes #TagsForLikes #web...", 
    lat: nil, 
    lng: nil, 
    username: "zxxrv", 
    ig_id: 1485119954, 
    profile_pic: "https://igcdn-photos-a-a.akamaihd.net/hphotos-ak-x...", 
    created_at: "2014-12-08 18:58:42", 
    updated_at: "2014-12-08 18:58:42") 

Visual.create( 
    id: 104, 
    trip_id: 2, 
    media_type: "image", 
    time_taken: 1418065122, 
    thumbnail_url: "http://scontent-a.cdninstagram.com/hphotos-xaf1/t5...", 
    standard_url: "http://scontent-a.cdninstagram.com/hphotos-xaf1/t51.2885-15/10852728_1575606279325037_323509978_n.jpg", 
    caption: "Finally mert again💋 Waiting for the other two of u...", 
    lat: 22.328491283, 
    lng: 114.128594623, 
    username: "cwynnnnn_", 
    ig_id: 16522143, 
    profile_pic: "https://igcdn-photos-a-a.akamaihd.net/hphotos-ak-x...", 
    created_at: "2014-12-08 18:58:43", 
    updated_at: "2014-12-08 18:58:43") 

Visual.create( 
    id: 105, 
    trip_id: 2, 
    media_type: "image", 
    time_taken: 1418065122, 
    thumbnail_url: "http://scontent-b.cdninstagram.com/hphotos-xfa1/t5...", 
    standard_url: "http://scontent-b.cdninstagram.com/hphotos-xfa1/t51.2885-15/10520253_727836737294877_1209505428_n.jpg", 
    caption: "#selfie #shoppingtoday #skippedschool #yolo #goodd...", 
    lat: nil, 
    lng: nil, 
    username: "cassidy_ann_garrone", 
    ig_id: 179875351, 
    profile_pic: "https://igcdn-photos-g-a.akamaihd.net/hphotos-ak-x...", 
    created_at: "2014-12-08 18:58:43", 
    updated_at: "2014-12-08 18:58:43") 

Visual.create( 
    id: 106, 
    trip_id: 2, 
    media_type: "image", 
    time_taken: 1418065123, 
    thumbnail_url: "http://scontent-b.cdninstagram.com/hphotos-xfa1/t5...", 
    standard_url: "http://scontent-b.cdninstagram.com/hphotos-xfa1/t51.2885-15/10848176_880602285293111_59491611_n.jpg", 
    caption: "Day 336: Day has been made with a little frosting ...", 
    lat: 42.337417, 
    lng: -71.171577, 
    username: "sarahcarlee", 
    ig_id: 6034541, 
    profile_pic: "https://igcdn-photos-e-a.akamaihd.net/hphotos-ak-x...", 
    created_at: "2014-12-08 18:58:43", 
    updated_at: "2014-12-08 18:58:43") 

Visual.create( 
    id: 107, 
    trip_id: 2, 
    media_type: "image", 
    time_taken: 1418059144, 
    thumbnail_url: "http://scontent-a.cdninstagram.com/hphotos-xaf1/t5...", 
    standard_url: "http://scontent-a.cdninstagram.com/hphotos-xaf1/t51.2885-15/10859967_986657354683668_1798543805_n.jpg", 
    caption: "Nunca te duermas sin sueño, 
    ni te levantes sin un ...", 
    lat: 10.462734271, 
    lng: -66.861511124, 
    username: "maurobucce", 
    ig_id: 646065765, 
    profile_pic: "https://igcdn-photos-h-a.akamaihd.net/hphotos-ak-x...", 
    created_at: "2014-12-08 18:58:43",
    updated_at: "2014-12-08 18:58:43")

Visual.create( 
    id: 109, 
    trip_id: 2, 
    media_type: "image", 
    time_taken: 1418065125, 
    thumbnail_url: "http://scontent-b.cdninstagram.com/hphotos-xfa1/t5...", 
    standard_url: "http://scontent-b.cdninstagram.com/hphotos-xfa1/t51.2885-15/10838813_780904535314509_1343223718_n.jpg", 
    caption: "Lightening lights the pitch black sky! #nofilter #...", 
    lat: nil, 
    lng: nil, 
    username: "willstyle", 
    ig_id: 10457859, 
    profile_pic: "",
    created_at: "2014-12-08 18:58:46", 
    updated_at: "2014-12-08 18:58:46") 

Visual.create( 
    id: 112, 
    trip_id: 2, 
    media_type: "image", 
    time_taken: 1418065121, 
    thumbnail_url: "http://scontent-b.cdninstagram.com/hphotos-xaf1/t5...", 
    standard_url: "http://scontent-b.cdninstagram.com/hphotos-xaf1/t51.2885-15/10852858_1515553402030184_20180504_n.jpg",
    caption: "Queen M👑", 
    lat: nil, 
    lng: nil, 
    username: "black.flovver", 
    ig_id: 289043605, 
    profile_pic: "https://igcdn-photos-d-a.akamaihd.net/hphotos-ak-x...", 
    created_at: "2014-12-08 18:58:46", 
    updated_at: "2014-12-08 18:58:46") 

Visual.create( 
    id: 114, 
    trip_id: 2, 
    media_type: "image", 
    time_taken: 1418065127, 
    thumbnail_url: "http://scontent-b.cdninstagram.com/hphotos-xaf1/t5...", 
    standard_url: "http://scontent-a.cdninstagram.com/hphotos-xpa1/t51.2885-15/10598396_1470013223256495_848637074_n.jpg",
    caption: "The Body Shop - Big smoke! I love grey and it's so...", 
    lat: nil, 
    lng: nil, 
    username: "bemvw", 
    ig_id: 517997791, 
    profile_pic: "https://igcdn-photos-b-a.akamaihd.net/hphotos-ak-x...", 
    created_at: "2014-12-08 18:58:48", 
    updated_at: "2014-12-08 18:58:48") 

Visual.create( 
    id: 120, 
    trip_id: 2, 
    media_type: "image", 
    time_taken: 1408962881, 
    thumbnail_url: "http://scontent-a.cdninstagram.com/hphotos-xpa1/t5...", 
    standard_url: "http://scontent-a.cdninstagram.com/hphotos-xfp1/t51.2885-15/10349316_1496416077240734_1670703870_n.jpg", 
    caption: "#selfie #nofilter @TagsForLikes #TagsForLikes #web...", 
    lat: nil, 
    lng: nil, 
    username: "ruya_92", 
    ig_id: 911521081, 
    profile_pic: "https://igcdn-photos-f-a.akamaihd.net/hphotos-ak-x...", 
    created_at: "2014-12-08 18:58:49", 
    updated_at: "2014-12-08 18:58:49") 

Visual.create( 
    id: 123, 
    trip_id: 2, 
    media_type: "image", 
    time_taken: 1400795071, 
    thumbnail_url: "http://scontent-a.cdninstagram.com/hphotos-xfp1/t5...", 
    standard_url: "http://scontent-a.cdninstagram.com/hphotos-xaf1/t51.2885-15/10817820_1528420547444579_643546082_n.jpg", 
    caption: "#TagsForLikes #likeforlike #like4like #liketeam #c...", 
    lat: nil, 
    lng: nil, 
    username: "karlsruhe_beauty", 
    ig_id: 441526645, 
    profile_pic: "https://igcdn-photos-f-a.akamaihd.net/hphotos-ak-x...", 
    created_at: "2014-12-08 18:58:51", 
    updated_at: "2014-12-08 18:58:51") 

Visual.create( 
    id: 124, 
    trip_id: 2, 
    media_type: "image", 
    time_taken: 1418065131, 
    thumbnail_url: "http://scontent-a.cdninstagram.com/hphotos-xaf1/t5...", 
    standard_url: "http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/10831838_379284522237901_700062082_n.jpg",
    caption: "My mom & my dad #selfie #nofilter @TagsForLikes #T...", 
    lat: nil, 
    lng: nil, 
    username: "margarethascencao", 
    ig_id: 674137053, 
    profile_pic: "https://igcdn-photos-a-a.akamaihd.net/hphotos-ak-x...", 
    created_at: "2014-12-08 18:58:52", 
    updated_at: "2014-12-08 18:58:52") 

Visual.create( 
    id: 126, 
    trip_id: 2, 
    media_type: "image", 
    time_taken: 1417049212, 
    thumbnail_url: "http://scontent-a.cdninstagram.com/hphotos-xfa1/t5...", 
    standard_url: "http://scontent-b.cdninstagram.com/hphotos-xfa1/t51.2885-15/10831919_994516217230328_1547103231_n.jpg", 
    caption: "#Tea and talk", 
    lat: 37.770269015, 
    lng: -122.469504177, 
    username: "fnywong", 
    ig_id: 199665298, 
    profile_pic: "https://igcdn-photos-a-a.akamaihd.net/hphotos-ak-x...", 
    created_at: "2014-12-08 18:58:52", 
    updated_at: "2014-12-08 18:58:52") 

Visual.create( 
    id: 128, 
    trip_id: 2, 
    media_type: "image", 
    time_taken: 1418065131, 
    thumbnail_url: "http://scontent-b.cdninstagram.com/hphotos-xfa1/t5...", 
    standard_url: "http://scontent-a.cdninstagram.com/hphotos-xaf1/t51.2885-15/10853017_1581966895366216_1765085840_n.jpg",
    caption: "#selfie #nofilter @TagsForLikes #TagsForLikes #web...", 
    lat: nil, 
    lng: nil, 
    username: "_marikamarcello", 
    ig_id: 493949297, 
    profile_pic: "https://igcdn-photos-f-a.akamaihd.net/hphotos-ak-x...", 
    created_at: "2014-12-08 18:58:52", 
    updated_at: "2014-12-08 18:58:52") 

Visual.create( 
    id: 130, 
    trip_id: 2, 
    media_type: "image", 
    time_taken: 1418035033, 
    thumbnail_url: "http://scontent-a.cdninstagram.com/hphotos-xaf1/t5...", 
    standard_url: "http://scontent-b.cdninstagram.com/hphotos-xfa1/t51.2885-15/10818035_1651665891727019_669690957_n.jpg", 
    caption: "Good morning!!!☺😊", 
    lat: nil, 
    lng: nil, 
    username: "lia_zarbala", 
    ig_id: 550305298, 
    profile_pic: "https://igcdn-photos-g-a.akamaihd.net/hphotos-ak-x...", 
    created_at: "2014-12-08 18:58:52", 
    updated_at: "2014-12-08 18:58:52") 

Visual.create( 
    id: 132, 
    trip_id: 2, 
    media_type: "image", 
    time_taken: 1418057080, 
    thumbnail_url: "http://scontent-b.cdninstagram.com/hphotos-xfa1/t5...", 
    standard_url: "http://scontent-a.cdninstagram.com/hphotos-xaf1/t51.2885-15/10818027_734666316622204_1141389426_n.jpg",
    caption: "Doing a QandA in YouTube so ask me your questions ...", 
    lat: nil, 
    lng: nil, 
    username: "snowy_erin_1", 
    ig_id: 1518144677, 
    profile_pic: "https://igcdn-photos-e-a.akamaihd.net/hphotos-ak-x...", 
    created_at: "2014-12-08 18:58:52", 
    updated_at: "2014-12-08 18:58:52") 

Visual.create( 
    id: 134, 
    trip_id: 2, 
    media_type: "image", 
    time_taken: 1418065132, 
    thumbnail_url: "http://scontent-a.cdninstagram.com/hphotos-xaf1/t5...", 
    standard_url: "http://scontent-a.cdninstagram.com/hphotos-xap1/t51.2885-15/10575977_1501823366757408_2076367988_n.jpg", 
    caption: "#nofilter", 
    lat: nil, 
    lng: nil, 
    username: "chelszc", 
    ig_id: 145282605, 
    profile_pic: "https://igcdn-photos-d-a.akamaihd.net/hphotos-ak-x...", 
    created_at: "2014-12-08 18:58:52", 
    updated_at: "2014-12-08 18:58:52") 

Visual.create( 
    id: 135, 
    trip_id: 2, 
    media_type: "image", 
    time_taken: 1417374352, 
    thumbnail_url: "http://scontent-a.cdninstagram.com/hphotos-xap1/t5...", 
    standard_url: "http://scontent-b.cdninstagram.com/hphotos-xap1/t51.2885-15/10623859_481660038642426_1265141422_n.jpg", 
    caption: nil, 
    lat: nil, 
    lng: nil, 
    username: "umitozcan1977", 
    ig_id: 958101385, 
    profile_pic: "https://igcdn-photos-b-a.akamaihd.net/hphotos-ak-x...", 
    created_at: "2014-12-08 18:58:53", 
    updated_at: "2014-12-08 18:58:53") 

Visual.create( 
    id: 338, 
    trip_id: 2, 
    media_type: "image", 
    time_taken: 1410465097, 
    thumbnail_url: "http://scontent-b.cdninstagram.com/hphotos-xap1/t5...", 
    standard_url: "http://scontent-b.cdninstagram.com/hphotos-xaf1/t51.2885-15/10831806_611603655633035_1621027642_n.jpg", 
    caption: "*cough*", 
    lat: nil, 
    lng: nil, 
    username: "ether2869", 
    ig_id: 311583511, 
    profile_pic: "https://instagramimages-a.akamaihd.net/profiles/pr...", 
    created_at: "2014-12-08 19:00:05", 
    updated_at: "2014-12-08 19:00:05")