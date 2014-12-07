// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

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
      mapTypeId: google.maps.MapTypeId.HYBRID
    };

    map = new google.maps.Map(mapCanvas, mapOptions); //global

    var iw = new google.maps.InfoWindow();
       //global
       window.oms = new OverlappingMarkerSpiderfier(map,
         {markersWontMove: true, markersWontHide: true});
       var usualColor = 'eebb22';
       var spiderfiedColor = 'ffee22';
       var iconWithColor = function(color) {
         return 'http://chart.googleapis.com/chart?chst=d_map_xpin_letter&chld=pin|+|' +
           color + '|000000|ffff00';
       }
       
      var shadow = new google.maps.MarkerImage(
         'https://www.google.com/intl/en_ALL/mapfiles/shadow50.png',
         new google.maps.Size(37, 34),  // size   - for sprite clipping
         new google.maps.Point(0, 0),   // origin - ditto
         new google.maps.Point(10, 34)  // anchor - where to meet map location
       );

    oms.addListener('click', function(marker) {
      iw.setContent(marker.desc);
      iw.open(map, marker);
    });

    oms.addListener('spiderfy', function(markers) {
      for(var i = 0; i < markers.length; i ++) {
        markers[i].setIcon(iconWithColor(spiderfiedColor));
        markers[i].setShadow(null);
      } 
      iw.close();
    });

    oms.addListener('unspiderfy', function(markers) {
      for(var i = 0; i < markers.length; i ++) {
        markers[i].setIcon(iconWithColor(usualColor));
        markers[i].setShadow(shadow);
      }
    });
    
  }//end of initialize

   google.maps.event.addDomListener(window, 'load', initialize); 

});

function addMarker(visual) {
  var marker = new google.maps.Marker({
    position: new google.maps.LatLng(visual.lat, visual.lng),
    icon: visual.thumbnail_url,
    map: map
  });

}

// nm={id: 1, trip_id: 1, thumbnail_url: "http://scontent-b.cdninstagram.com/hphotos-xap1/t51.2885-15/10788021_588576094607319_157669935_s.jpg", lat: 40.704536, lng: -74.014711}





