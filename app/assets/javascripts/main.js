$(function() {

  var slide = false;
  $('.navbar-button').on('click', function() {
    if( slide === false ) {
      $('.navbar-links').animate({
        left: "-=15%" }, 500 );
      $('.navbar-button').animate({
        left: "-=15%" }, 500 );
      slide = true;
    } else {
      $('.navbar-links').animate({
        left: "+=15%" }, 500 );
      $('.navbar-button').animate({
        left: "+=15%" }, 500 );
      slide = false;
    }
  });

// There is a bug in dropdown.js that shows an error when clicking
// anywhere on the screen. This is is a hack fix found 
// online (https://github.com/twbs/bootstrap/issues/10044) 
// and should be used with caution. It was however, necessary for dev purposes.

  if(navigator.userAgent.toLowerCase().indexOf('firefox') > -1) {

    document._oldGetElementById = document.getElementById;
    document.getElementById = function(id) {

      if(id === undefined || id === null || id === '') {
        return undefined;
        }
      return document._oldGetElementById(id);
    };
  }

})


