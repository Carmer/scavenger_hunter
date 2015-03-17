$(document).ready(function() {
  mapCurrentLocation();
});

function mapCurrentLocation() {
  navigator.geolocation.getCurrentPosition(function(position)  {

    var team_latitude = position.coords.latitude.toFixed(6);
    var team_longitude = position.coords.longitude.toFixed(6);

    $("#latitude").attr('value', parseFloat(team_latitude))
    $("#longitude").attr('value', parseFloat(team_longitude))
  },
  function(PositionError) {
    console.log(PositionError)
  }, { enableHighAccuracy: true });
}
