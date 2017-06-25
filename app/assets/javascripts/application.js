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
//= require materialize.min
//= require owl.carousel.min
//= require fakeLoader.min
//= require main



var template = '<div class="row"> <div class="col s4"> <div class="content"> <div class="code"> <div class="MAE"> <span> MAE </span> </div> </div> </div> </div> <div class="col s8"> <div class="content"> <h5><a href="">Lorem Ipsum Dolor Sit Amet, Consectetuer Adipiscing Elit</a></h5> <span>MAE256</span> </div> </div> </div>';

// MATERIA
var value_materia = "";
$(window).scroll(function() {
    var percent = $(window).scrollTop() + $(window).height();
    percent /= $(document).height();
    console.log(percent);
    
   if( percent >= 0.7) {
       var start_materia = $('.materias').children().length;
       $.post( "/procura_materia/ajax", { value: value_materia,start: start_materia, limit: 100 })
      .done(function( data ) {
        $( ".materias" ).append( data );
      });
   }
});
function procura_valor(value) {
    value_materia = value
    $.post( "/procura_materia/ajax", { value: value_materia, start: 0, limit: 100 })
      .done(function( data ) {
        $( ".materias" ).empty();
        $( ".materias" ).append( data );
      });
}





