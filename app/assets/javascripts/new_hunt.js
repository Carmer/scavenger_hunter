$(document).ready(function() {

  $('#add-location').click(function () {
    $('.location:last').clone().appendTo('#location-fields')
  })

  $('#remove-location').click(function() {
    if ($('#location-fields > p.location').length > 1) {
      $('.location:last').remove();
    }
  })

});