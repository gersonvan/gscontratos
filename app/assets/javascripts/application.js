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
   $("#telefone2").inputmask({"mask": "(99) 9 9999-9999", 'removeMaskOnSubmit': true});
   $("#telefone3").inputmask({"mask": "(99) 9 9999-9999", 'removeMaskOnSubmit': true});
   $("#cpf").inputmask({"mask": "999.999.999-99", 'removeMaskOnSubmit': true});
   $("#cep").inputmask({"mask": "99.999-999", 'removeMaskOnSubmit': true});
   $("#cep2").inputmask({"mask": "99.999-999", 'removeMaskOnSubmit': true});
   $("#cnpj").inputmask({"mask": "99.999.999/9999-99", 'removeMaskOnSubmit': true});
});

$(document).ready(function() {
  $('#saveButton').on('click', function() { $('#myForm').submit(); });
});

new Awesomplete('input[data-multiple]', {
	filter: function(text, input) {
		return Awesomplete.FILTER_CONTAINS(text, input.match(/[^,]*$/)[0]);
	},

	replace: function(text) {
		var before = this.input.value.match(/^.+,\s*|/)[0];
		this.input.value = before + text + ", ";
	}
});