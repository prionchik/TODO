// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)
$(document).on("click", "#wellcome_show_path", function(){
   $("#form").submit();
});

$(document).on("click", "#wellcome_create_todo", function(){
   var obj = document.getElementById("new_task");
   obj.style.display = "block";
});

$(document).on("click", "#wellcome_cancel", function(){
  var obj = document.getElementById("new_task");
  obj.style.display = "none";
});

function onChange(){
this.parentNode.submit();
}
