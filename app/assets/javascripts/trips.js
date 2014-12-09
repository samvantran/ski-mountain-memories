// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready(function() {

  overlays = [];
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


    for (var i = 0; i < visuals.length; i++) {
      // debugger  
      var swBound = new google.maps.LatLng(visuals[i].lat, visuals[i].lng);
      var neBound = new google.maps.LatLng(visuals[i].lat, visuals[i].lng);
      var bounds = new google.maps.LatLngBounds(swBound, neBound);
      var srcImage = visuals[i].thumbnail_url;

      overlays.push(new SKIOverlay(bounds, srcImage, map));
    };
    
    console.log(overlays);
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
    div.style.border = 'solid green';
    div.style.borderWidth = '3px';
    div.style.position = 'absolute';
    div.style.cursor = 'pointer';
    div.className = "fancybox-media";
    // div.setAttribute("rel", "fancybox-media");
    // console.log(srcImage);
    div.setAttribute("href", this.image_);

    // Create the img element and attach it to the div.
    var img = document.createElement('img');
    img.src = this.image_;
    img.style.width = '100px';
    img.style.height = '100px';
    img.style.left = '-50px';
    img.style.top = '-50px';
    img.style.position = 'relative';
    img.style.borderRadius = '50%';
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
    div.style.width = '1px';
    div.style.height ='1px';
  };

  if( typeof google !== 'undefined' ) {
    google.maps.event.addDomListener(window, 'load', initialize);    
  }

  //CODE REQUIRED FOR FANCYBOX TEST
  $(".fancybox-media").fancybox({
    prevEffect  : 'none',
    nextEffect  : 'none',
    helpers : {
      media : {}
      // title : {
      //   type: 'outside'
      // },
      // thumbs  : {
      //   width : 50,
      //   height  : 50
      // }
    }
  });

});//end of document ready













