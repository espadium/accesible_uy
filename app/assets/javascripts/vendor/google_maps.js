var google_maps = {
  map: null,
  init: function () {
    var mapOptions = {
      center: new google.maps.LatLng(-34.882551,-56.164255),
      zoom: 13,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var canvas = $("#map-canvas");
    google_maps.map = new google.maps.Map(canvas[0], mapOptions);
    if (canvas.data('markers')) {
      var markers = canvas.data('markers');
      $.each(markers, function(index, value) {
        google_maps.addMarker(new google.maps.LatLng(value[0], value[1]), value[2]);
      });
    }
  },

  addMarker: function (latLng, name) {
    var marker = new google.maps.Marker({
        position: latLng,
        map: google_maps.map,
        title: name
    });
  },

  center: function (lat, lon) {
    google_maps.map.setCenter(new google.maps.LatLng(lat, lon));
  },

  bindClickAddMarker: function () {
    google.maps.event.addListener(google_maps.map, 'click', function(event) {
      google_maps.addMarker(event.latLng, 'asdas');
    });
  }
}