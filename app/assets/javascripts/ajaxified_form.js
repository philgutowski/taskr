$(function(){
  $("#new_task").submit(function(){
    $.post(
      "/tasks",
      $("#new_task").serialize()
    ).done(function(data){
      $("#tasks").prepend(data);
      $("#errors").html("");
      $("#task_title, #task_body").val("");
    }).fail(function(xhr){
      var dataVar = xhr.responseText;
      $("#errors").html(dataVar)
    });

    return false;
  });

  $("#tasks").on("click", ".completed_checkbox", function(event) {
    // In this case, 'event' is the click.  Target is the checkbox.  So we are finding the form parent of the checkbox that we clicked.
    var formEl = $(event.target).parents("form")

    $.ajax({
      // A string containing the URL to which the request is sent.  Get it from the form.
      url: formEl.prop("action"), 
      // Data to be sent to the server. It is converted to a query string, if not already a string. It's appended to the url for GET-requests.  In this case is serializes all the data into a format for what the request expects.
      data: formEl.serialize(), 
      type: "PATCH"
    }).done(function() {
      formEl.parents("li").fadeOut();
    });
  });

$(".delete").click(function(event) {
  $(event.target).hide();

  return false;
});




});
