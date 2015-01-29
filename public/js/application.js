$(document).ready(function() {

 $('header').on('click', '#login-link', function(event) {
     event.preventDefault();
    var $target = $(event.target);

    $.ajax({
      url: '/login',
      type: 'GET'
    }).done(function(response) {
      $('#hidden-login').html(response);
    });
  });

 $('header').on('click', '#signup-link', function(event) {
     event.preventDefault();
    var $target = $(event.target);

    $.ajax({
      url: '/signup',
      type: 'GET'
    }).done(function(response) {
      $('#hidden-login').html(response);
    });
  });

$('a').mouseenter(function(){
  $(this).css('background-color', '#BCE3C5');
});
$('a').mouseleave(function(){
  $(this).css('background-color', '#94C7B6');
});
});
