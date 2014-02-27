//= require jquery
//= require jquery_ujs
//= require bootstrap

$(document).ready(function() {
  $('form[action="/tracking_number"]').submit(function(event) {
    if ($(this).find('#number').val().length == 0) {
      $.ajax( '/tracking_number/new.js' )
      event.preventDefault();
    };
  });
});