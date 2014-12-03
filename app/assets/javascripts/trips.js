// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(function() {
  function initialize() {
          var mapCanvas = document.getElementById('map-canvas');
          var mapOptions = {
            center: new google.maps.LatLng(39.473984, -106.084066),
            zoom: 16  ,
            mapTypeId: google.maps.MapTypeId.HYBRID
          };
          var map = new google.maps.Map(mapCanvas, mapOptions);

          function addMarker(feature) {
              var marker = new google.maps.Marker({
                position: feature.position,
                icon: 'http://blog.breckenridge.com/wp-content/uploads/2013/01/BRK4360_Liam_Doran-300x200.jpg',
                map: map
              });
          };

          var features = [
              {
                position: new google.maps.LatLng(39.475355, -106.085634),
                type: 'info'
              }, {
                position: new google.maps.LatLng(39.473947, -106.086621),
                type: 'info'
              }, {
                position: new google.maps.LatLng(39.470746, -106.083668),
                type: 'info'
              },
          ];

          for (var i = 0, feature; feature = features[i]; i++) {
              addMarker(feature);
          };
        }

  google.maps.event.addDomListener(window, 'load', initialize);  
})