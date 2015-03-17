$(document).ready(function() {
  mapCurrentLocation();
});

function mapCurrentLocation() {
  console.log("this is hit 3")
  navigator.geolocation.getCurrentPosition(function(position)  {

    var team_latitude = position.coords.latitude.toFixed(6);
    var team_longitude = position.coords.longitude.toFixed(6);
    console.log(team_latitude)
    console.log(team_longitude)

    $("#latitude").attr('value', parseFloat(team_latitude))
    $("#longitude").attr('value', parseFloat(team_longitude))
  },
  function(PositionError) {
  console.log("this is hit 4");
    console.log(PositionError)
  }, { enableHighAccuracy: true });
}
