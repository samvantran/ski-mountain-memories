// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {
  
  function initialize() {
    var lat = $('#map-canvas').data('lat'); 
    var lng = $('#map-canvas').data('lng');
    var zoom_level = $('#map-canvas').data('zoom');
    var visuals = $('#map-canvas').data('visuals');

    var mapCanvas = document.getElementById('map-canvas');
    var mapOptions = {
      center: new google.maps.LatLng(lat, lng),
      zoom: zoom_level,
      mapTypeId: google.maps.MapTypeId.TERRAIN
    };

    map = new google.maps.Map(mapCanvas, mapOptions); //global

    // function addMarker(visual) {
    //   // debugger
    //   var image = {
    //     url: visual.thumbnail_url,
    //     // This marker is 20 pixels wide by 32 pixels tall.
    //     size: new google.maps.Size(200, 200),
    //     // The origin for this image is 0,0.
    //     origin: new google.maps.Point(0,0),
    //     // The anchor for this image is the base of the flagpole at 0,32.
    //     anchor: new google.maps.Point(0, 80)
    //     // radius: new google.maps.Radius(100)
    //   };

    //   var shape = {
    //     coords: [1, 1, 1, 20, 18, 20, 18 , 1],
    //     type: 'poly'
    //   };

    //   var marker = new google.maps.Marker({
    //     position: new google.maps.LatLng(visual.lat, visual.lng),
    //     icon: image,
    //     map: map,
    //     shape: shape,
    //     zIndex: visual.id,
    //     animation: google.maps.Animation.DROP
    //   });
    // };

    // for (var i = 0, visual; visual = visuals[i]; i++) {
    //   var marky = addMarker(visual);
    // };

    var marker = new google.maps.Marker({
      position: new google.maps.LatLng(39.470746, -106.083668),
      map: map,
      animation: google.maps.Animation.DROP
    });

    google.maps.event.addListener(marker, 'click', function() {
      alert( "Thanks for visiting!" );
    });

  }

  if( typeof google !== 'undefined' ) {
    google.maps.event.addDomListener(window, 'load', initialize);    
  }

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










