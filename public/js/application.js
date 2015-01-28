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
});

