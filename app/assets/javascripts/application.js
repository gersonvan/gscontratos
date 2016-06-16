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
//= require jquery.turbolinks
//= require turbolinks
//= require bootstrap-sprockets
//= require bootstrap
//= require bootstrap-datepicker
//= require_tree .

$('.datepicker').datepicker();

$(document).ready(function(){
   $("#telefone").inputmask({"mask": "(99) 9 9999-9999", 'removeMaskOnSubmit': true});
   $("#cpf").inputmask({"mask": "999.999.999-99", 'removeMaskOnSubmit': true});
   $("#cep").inputmask({"mask": "99.999-999", 'removeMaskOnSubmit': true});
   $("#cep2").inputmask({"mask": "99.999-999", 'removeMaskOnSubmit': true});
   $("#cnpj").inputmask({"mask": "99.999.999/9999-99", 'removeMaskOnSubmit': true});
});

$(document).ready(function() {
  $('#saveButton').on('click', function() { $('#myForm').submit(); });
});