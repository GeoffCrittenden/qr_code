$(document).ready(function() {

  $('#get_code').hide();

  $('#select').on('submit',function(e) {
    e.preventDefault();
    var url = $(this).attr('action');
    var data = $(this).serialize();
    $.post(url, data, function(response) {
      $('.qr').append(response);
    });
  });

  //when ready...
  window.addEventListener("load", function(){
    //Set a timeout...
    setTimeout(function(){
      //Hide the address bar!
      window.scrollTo(0, 1);
    }, 0);
  });

  // $('.top').mouseenter(showOnOver);

  // $('.top').mouseleave(hideOnLeave);

  // $('#get_code input').focus(stickWithIt);

  // $('#get_code input').focusout(reHide);

});

// function showOnOver(){
//   $('#get_code').show();
//   $('#mouse').hide();
// }

// function hideOnLeave(){
//   $('#get_code').hide();
//   $('#mouse').show();
// }

// function stickWithIt(){
//   $('.top').unbind('mouseleave', hideOnLeave);
// }

// function reHide(){
//   $('.top').bind('mouseleave', hideOnLeave);
// }
