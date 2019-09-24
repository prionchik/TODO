// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require_tree .
$(document).on('click', '#index_path', function(){
   $("#form").submit();
});

$(document).on('click', '#create_todo', function(){
   var obj = document.getElementById('new_task');
   obj.style.display = 'block';
});

$(document).on("click", "#cancel", function(){
  var obj = document.getElementById("new_task");
  obj.style.display = "none";
});

function onChange(){
this.parentNode.submit();
}
