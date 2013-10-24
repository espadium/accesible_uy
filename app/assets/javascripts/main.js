$(document).ready(function() {
  // Mousetrap examples
  $('a.shortcutable').each(function() {
    var $that = $(this);
    var code = String($that.data('code'));
    Mousetrap.bind(code, function() {
      window.location = $that.attr('href');
    });
  });

  $('a.enlarge-font').click(function(e){
    e.preventDefault();
    e.stopPropagation();
    console.log($('body').css('font-size'));
    var size = parseInt($('body').css('font-size')) + 2;
    $('body').css('font-size', size);
  });
  $('a.reduce-font').click(function(e){
    e.preventDefault();
    e.stopPropagation();
    console.log($('body').css('font-size'));
    var size = parseInt($('body').css('font-size')) - 2;
    $('body').css('font-size', size);
  });
});

$(window).load(function() {
  google_maps.init();
  google_maps.bindClickAddMarker();
});