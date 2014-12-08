// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
markers = [];

$(function() {
  
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

    var iw = new google.maps.InfoWindow();
       //global
       oms = new OverlappingMarkerSpiderfier(map,
         {markersWontMove: true, markersWontHide: true});

    oms.addListener('click', function(marker) {
      iw.setContent(marker.popup);
      iw.open(map, marker);
    });
  
}//end of initialize

  if( typeof google !== 'undefined' ) {
    google.maps.event.addDomListener(window, 'load', initialize);    
  }
});//end of document.ready

function addMarker(visual) {
  var image = {
    url: visual.thumbnail_url,
    size: new google.maps.Size(80,80),
    origin: new google.maps.Point(0, 0),
    anchor: new google.maps.Point(0, 0),
    scaledSize: new google.maps.Size(80, 80)
  };

  var marker = new google.maps.Marker({
    position: new google.maps.LatLng(visual.lat, visual.lng),
    icon: image,
    map: map,
    animation: google.maps.Animation.DROP,
    popup: '<img src=' + visual.thumbnail_url + '>'

  });

  markers.push(marker)
  var date = new Date(visual.time_taken); 
  $('#photo-time').html(date)
  oms.addMarker(marker);
}

// nm={id: 1, trip_id: 1, thumbnail_url: "http://scontent-b.cdninstagram.com/hphotos-xap1/t51.2885-15/10788021_588576094607319_157669935_s.jpg", lat: 40.704536, lng: -74.014711}








