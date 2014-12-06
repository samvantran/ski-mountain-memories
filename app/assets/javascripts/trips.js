// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(function() {
  function initialize() {
    // var mapCanvas = document.getElementById('map-canvas');
    // var lat = document.getElementById('map-canvas').getAttribute('data-lat'); 
    // var lng = document.getElementById('map-canvas').getAttribute('data-lng');
    // var zoom_level = document.getElementById('map-canvas').getAttribute('data-zoom');
    // var visuals = document.getElementById('map-canvas').getAttribute('data-visuals');
    
    var mapCanvas = document.getElementById('map-canvas');
    var lat = $('#map-canvas').data('lat'); 
    var lng = $('#map-canvas').data('lng');
    var zoom_level = $('#map-canvas').data('zoom');
    var visuals = $('#map-canvas').data('visuals');

    var mapOptions = {
      center: new google.maps.LatLng(lat, lng),
      zoom: zoom_level,
      mapTypeId: google.maps.MapTypeId.HYBRID
    };

    map = new google.maps.Map(mapCanvas, mapOptions); //global

  }

  google.maps.event.addDomListener(window, 'load', initialize);  
  oms = new OverlappingMarkerSpiderfier(map); //global

  var iw = new gm.InfoWindow();
  oms.addListener('click', function(marker, event) {
    iw.setContent(marker.desc);
    iw.open(map, marker);
  });

  oms.addListener('spiderfy', function(markers) {
  iw.close();
});

});

function addMarker(visual) {
  for (var i = 0; i < window.mapData.length; i ++) {
  var datum = window.mapData[i];
  var loc = new gm.LatLng(datum.lat, datum.lon);

  var marker = new google.maps.Marker({
    position: new google.maps.LatLng(visual.lat, visual.lng),
    title: datum.h,
    icon: visual.thumbnail_url,
    map: map
  });

  marker.desc = datum.d;
  oms.addMarker(marker);  // <-- here
}

};



