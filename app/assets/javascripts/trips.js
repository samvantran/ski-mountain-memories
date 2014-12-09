markers = [];
profile_urls=[];
overlays = [];

$(document).ready(function() {


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

   map = new google.maps.Map(mapCanvas, mapOptions); //global

  //global
  oms = new OverlappingMarkerSpiderfier(map,
    {markersWontMove: true, markersWontHide: true});
 

 // for (i = 0; i < visuals.length; i++) { 
 //   addMarker(visuals[i])
 //  }

   for (var i = 0; i < visuals.length; i++) {
     // debugger  
     var swBound = new google.maps.LatLng(visuals[i].lat, visuals[i].lng);
     var neBound = new google.maps.LatLng(visuals[i].lat, visuals[i].lng);
     var bounds = new google.maps.LatLngBounds(swBound, neBound);
     var srcImage = visuals[i].thumbnail_url;

     overlays.push(new SKIOverlay(bounds, srcImage, map));
   };
   

 }//initialize Blake



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
   div.className = "fancybox-thumb";
   div.setAttribute("rel", "fancybox-media");
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

});//end of document ready


function addMarker(visual) {
 // var image = {
 //   url: visual.thumbnail_url,
 //   size: new google.maps.Size(80,80),
 //   origin: new google.maps.Point(0, 0),
 //   anchor: new google.maps.Point(0, 0),
 //   scaledSize: new google.maps.Size(80, 80)
 // };

 // var marker = new google.maps.Marker({
 //   position: new google.maps.LatLng(visual.lat, visual.lng),
 //   icon: image,
 //   map: map,
 //   animation: google.maps.Animation.DROP,
 //   popup: '<img src=' + visual.thumbnail_url + '>'

 // });
var swBound = new google.maps.LatLng(visuals[i].lat, visuals[i].lng);
var neBound = new google.maps.LatLng(visuals[i].lat, visuals[i].lng);
var bounds = new google.maps.LatLngBounds(swBound, neBound);
var srcImage = visuals[i].thumbnail_url;

overlays.push(new SKIOverlay(bounds, srcImage, map));
 // markers.push(marker)
 var date = new Date(visual.time_taken)
 $('#photo-time').html(date)
 // oms.addMarker(marker);
}

function vcontains(a, obj) {
   for (var i = 0; i < a.length; i++) {
       if (a[i].thumbnail_url === obj.thumbnail_url) {
           return true;
       }
   }
   return false;
}

function contains(a, obj) {
   for (var i = 0; i < a.length; i++) {
       if (a[i]=== obj) {
           return true;
       }
   }
   return false;
}

function copyToClipboard(text) {
 window.prompt("Copy to clipboard: Ctrl+C, Enter", text);
}