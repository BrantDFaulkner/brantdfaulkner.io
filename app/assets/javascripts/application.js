// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


$( document ).ready(function() {

  $('#nav_burger').on('click', function() {
    $(this).toggleClass('expanded');
    $(this).siblings('ul').slideToggle();
  });

  $('#nav_drop_down ul li').on('click', function() {
    $('#nav_burger').toggleClass('expanded');
    $('#nav_drop_down ul').slideToggle();
  });

  // Smooth Scorll
  $('#home_links a').on("click", function(){
    var target = $(this).attr('href')
    var offset = $(target).offset().top - 60
    $('body').animate({scrollTop:offset}, '800')
  });

});