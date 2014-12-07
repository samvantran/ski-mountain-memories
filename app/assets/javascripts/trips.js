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

  if( typeof google !== 'undefined' ) {
    google.maps.event.addDomListener(window, 'load', initialize);    
  }
  
});

function addMarker(visual) {
  var marker = new google.maps.Marker({
    position: new google.maps.LatLng(visual.lat, visual.lng),
    icon: visual.thumbnail_url,
    map: map
  });

}





