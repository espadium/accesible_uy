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

bindShowInMapButtons = function() {
  $('a.show-in-map').click(function(evt) {
    evt.preventDefault();
    evt.stopPropagation();
    var lat = $(this).data('lat'),
        lon = $(this).data('lon');
    google_maps.center(lat, lon);
  });
};

$(window).load(function() {
  google_maps.init();

  bindShowInMapButtons();
});