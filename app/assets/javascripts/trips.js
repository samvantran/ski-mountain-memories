// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready(function() {
  

  var overlay;
  SKIOverlay.prototype = new google.maps.OverlayView();

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
    var map = new google.maps.Map(mapCanvas, mapOptions); //global

    // debugger
    var swBound = new google.maps.LatLng(39.464, -106.0298);
    var neBound = new google.maps.LatLng(39.467, -106.0299);
    var bounds = new google.maps.LatLngBounds(swBound, neBound);
    var srcImage = "http://s.hswstatic.com/gif/snow-skiing-equipment-1.jpg";
    
    overlay = new SKIOverlay(bounds, srcImage, map);
  }

  /** @constructor */
  function SKIOverlay(bounds, image, map) {

    // Initialize all properties.
    this.bounds_ = bounds;
    this.image_ = image;
    this.map_ = map;

    // Define a property to hold the image's div. We'll
    // actually create this div upon receipt of the onAdd()
    // method so we'll leave it null for now.
    this.div_ = null;

    // Explicitly call setMap on this overlay.
    this.setMap(map);
  }

  SKIOverlay.prototype.onAdd = function() {
    var div = document.createElement('div');
    div.style.border = 'solid white';
    div.style.borderWidth = '10px';
    div.style.position = 'absolute';
    div.style.cursor = 'pointer';
    div.className = "fancybox-thumb";
    div.setAttribute("rel", "fancybox-thumb");
    div.setAttribute("href", "http://upload.wikimedia.org/wikipedia/commons/e/ea/Freestyle_skiing_jump2.jpg");

    // Create the img element and attach it to the div.
    var img = document.createElement('img');
    img.src = this.image_;
    img.style.width = '50%';
    img.style.height = '50%';
    div.appendChild(img);

    this.div_ = div;

    // Add the element to the "overlayImage" pane.
    var panes = this.getPanes();
    panes.overlayImage.appendChild(this.div_);
  };

  SKIOverlay.prototype.draw = function() {

    // We use the south-west and north-east
    // coordinates of the overlay to peg it to the correct position and size.
    // To do this, we need to retrieve the projection from the overlay.
    var overlayProjection = this.getProjection();

    // Retrieve the south-west and north-east coordinates of this overlay
    // in LatLngs and convert them to pixel coordinates.
    // We'll use these coordinates to resize the div.
    var sw = overlayProjection.fromLatLngToDivPixel(this.bounds_.getSouthWest());
    var ne = overlayProjection.fromLatLngToDivPixel(this.bounds_.getNorthEast());

    // Resize the image's div to fit the indicated dimensions.
    var div = this.div_;
    div.style.left = sw.x + 'px';
    div.style.top = ne.y + 'px';
    div.style.width = (ne.x - sw.x) + 'px';
    div.style.height = (sw.y - ne.y) + 'px';
  };

  if( typeof google !== 'undefined' ) {
    google.maps.event.addDomListener(window, 'load', initialize);    
  }

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

  //ADD MARKER CODE BEGIN
  // function addMarker(visual) {
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
  //ADD MAKER CODE END




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



    // for (var i = 0, visual; visual = visuals[i]; i++) {
    //   addMarker(visual);
    // };  















