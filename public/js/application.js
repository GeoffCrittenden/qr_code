$(document).ready(function() {

  $('#get_code').on('submit',function(e) {
    e.preventDefault();
    $('#qr').remove();
    var url = $(this).attr('action');
    var data = $(this).serialize();
    $.post(url, data, function(response) {
      $('.container').append(response);
    });
  });

});
