// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

//= require bootstrap-datetimepicker

var data = {'data-format': 'yyyy-MM-dd hh:mm:ss' };
$(function(){
  $('.datepicker').attr(data);
  $('.datepicker').datetimepicker();
});