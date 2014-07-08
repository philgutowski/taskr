$(function(){
$("#new_task").submit(function(){
  $.post(
    "/tasks",
    $("#new_task").serialize()
  ).done(function(html){
    $("#tasks").prepend(html);
  });
  return false;
  });
});
