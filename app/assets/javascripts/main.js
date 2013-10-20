$(document).ready(function() {
  // Mousetrap examples
  $('a.shortcutable').each(function() {
    var $that = $(this);
    var code = String($that.data('code'));
    Mousetrap.bind(code, function() {
      window.location = $that.attr('href');
    });
  });
});

$(window).load(function() {
  google_maps.init();
  google_maps.bindClickAddMarker();
});