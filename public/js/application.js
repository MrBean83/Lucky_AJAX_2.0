$(document).ready(function() {
  $('a.roll').on('click', function(event){
    event.preventDefault();

    $.get('/roll', function(response){
      $('ul.rolls').append("<li>" + response + "</li>");
    });

  });
});
