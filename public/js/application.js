$(document).ready(function() {

  $('#get_code').hide();

  $('#get_code').on('submit',function(e) {
    e.preventDefault();
    $('#qr').remove();
    var url = $(this).attr('action');
    var data = $(this).serialize();
    $.post(url, data, function(response) {
      $('.qr').append(response);
    });
  });

  $('.top').mouseenter(showOnOver);

  $('.top').mouseleave(hideOnLeave);

  $('#get_code input').focus(stickWithIt);

  $('#get_code input').focusout(reHide);

});

function showOnOver(){
  $('#get_code').show();
  $('#mouse').hide();
}

function hideOnLeave(){
  $('#get_code').hide();
  $('#mouse').show();
}

function stickWithIt(){
  $('.top').unbind('mouseleave', hideOnLeave);
}

function reHide(){
  $('.top').bind('mouseleave', hideOnLeave);
}
