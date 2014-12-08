// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
<<<<<<< HEAD
var map = null;
$(document).ready(function() {
=======
// markers = [];
>>>>>>> master

  function initialize() {
    var mapCanvas = document.getElementById('map-canvas');
    var lat = $('#map-canvas').data('lat'); 
    var lng = $('#map-canvas').data('lng');
    var zoom_level = $('#map-canvas').data('zoom');
    var visuals = $('#map-canvas').data('visuals');

    var mapOptions = {
      center: new google.maps.LatLng(lat, lng),
      zoom: zoom_level,
      mapTypeId: google.maps.MapTypeId.TERRAIN
    };
    map = new google.maps.Map(mapCanvas, mapOptions); //global
<<<<<<< HEAD
    map.setCenter(new G)
    for (var i = 0, visual; visual = visuals[i]; i++) {
      addMarker(visual);
    };  

    debugger

    map = new GMap2(document.getElementById('map-canvas'));
    map.setCenter(new GLatLng(37.4419, -122.1419), 4);
    map.addControl(new GLargeMapControl());

    addRandomMarkers();
  }
=======

//     var iw = new google.maps.InfoWindow();
//        //global
//        oms = new OverlappingMarkerSpiderfier(map,
//          {markersWontMove: true, markersWontHide: true});

//     oms.addListener('click', function(marker) {
//       iw.setContent(marker.popup);
//       iw.open(map, marker);
//     });
  
// }//end of initialize
>>>>>>> master

  if( typeof google !== 'undefined' ) {
    google.maps.event.addDomListener(window, 'load', initialize);    
  }
<<<<<<< HEAD
    
  //ADD MARKER CODE BEGIN
  function addMarker(visual) {
    var image = {
      url: visual.thumbnail_url,
      // This marker is 20 pixels wide by 32 pixels tall.
      size: new google.maps.Size(200, 200),
      // The origin for this image is 0,0.
      origin: new google.maps.Point(0,0),
      // The anchor for this image is the base of the flagpole at 0,32.
      anchor: new google.maps.Point(0, 80)
      // radius: new google.maps.Radius(100)
    };

    var shape = {
      coords: [1, 1, 1, 20, 18, 20, 18 , 1],
      type: 'poly'
    };

    var marker = new google.maps.Marker({
      position: new google.maps.LatLng(visual.lat, visual.lng),
      icon: image,
      map: map,
      shape: shape,
      zIndex: visual.id,
      animation: google.maps.Animation.DROP
    });
  };
  //ADD MAKER CODE END

  //COPIED FROM MARKERLIGHT
  function addRandomMarkers() {
    // var numMarkers = parseInt(document.getElementById("numMarkers").value);
    // var markerType = document.getElementById("markerType").value;

    // Add markers to the map at random locations
    var bounds = map.getBounds();
    var southWest = bounds.getSouthWest();
    var northEast = bounds.getNorthEast();
    var lngSpan = northEast.lng() - southWest.lng();
    var latSpan = northEast.lat() - southWest.lat();
    for (var i = 0; i < numMarkers; i++) {
      var latlng = new GLatLng(southWest.lat() + latSpan * Math.random(),
       southWest.lng() + lngSpan * Math.random());
      if (markerType == "markerlight") {
        map.addOverlay(new MarkerLight(latlng, 
          {image:
            "http://gmaps-samples.googlecode.com/svn/trunk/markers/circular/bluecirclemarker.png"}));
      } else {
        map.addOverlay(new GMarker(latlng));
      }
    }
  };



    //CREATE MARKER FOR TESTING ALERT MESSAGE
    // var image = {
    //   url: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSBbU1XiZj_pRw5gUrUuReEvcz_QVKs3jtuvZn5FTU3LMM9wakP'
    // };

    // var marker = new google.maps.Marker({
    //   position: new google.maps.LatLng(39.470746, -106.083668),
    //   icon: image,
    //   map: map,
    //   animation: google.maps.Animation.DROP
    // });

    // for (var i = 0, visual; visual = visuals[i]; i++) {
    //   var marky = marker;
    // };


    //ALERT WHEN YOU CLICK ON MARKER
    // google.maps.event.addListener(marker, 'click', function() {
    //   alert( "Thanks for visiting!" );
    // });


    // COPIED MARKERLIGHT CODE
    // var map;

    // function initialize() {
    //   if (GBrowserIsCompatible()) {
    //     map = new GMap2(document.getElementById("map_canvas"));
    //     map.setCenter(new GLatLng(37.4419, -122.1419), 4);
    //     map.addControl(new GLargeMapControl());
    //   }
    // }




  //CODE REQUIRED FOR FANCYBOX TEST
  $(".fancybox-thumb").fancybox({
    prevEffect  : 'none',
    nextEffect  : 'none',
    helpers : {
      title : {
        type: 'outside'
      },
      thumbs  : {
        width : 50,
        height  : 50
      }
    }
  });

});
=======
// });//end of document.ready

// function addMarker(visual) {
//   var image = {
//     url: visual.thumbnail_url,
//     size: new google.maps.Size(80,80),
//     origin: new google.maps.Point(0, 0),
//     anchor: new google.maps.Point(0, 0),
//     scaledSize: new google.maps.Size(80, 80)
//   };

//   var marker = new google.maps.Marker({
//     position: new google.maps.LatLng(visual.lat, visual.lng),
//     icon: image,
//     map: map,
//     animation: google.maps.Animation.DROP,
//     popup: '<img src=' + visual.thumbnail_url + '>'

//   });

//   markers.push(marker)
//   var date = new Date(visual.time_taken); 
//   $('#photo-time').html(date)
//   oms.addMarker(marker);
// }

// nm={id: 1, trip_id: 1, thumbnail_url: "http://scontent-b.cdninstagram.com/hphotos-xap1/t51.2885-15/10788021_588576094607319_157669935_s.jpg", lat: 40.704536, lng: -74.014711}


>>>>>>> master










