$(document).ready(function(){

  function getCloud() {
    $.ajax({
      url: $(location).attr('href') + "cloud",
      type: "get",
      data:{username: $('#username').val()},
      success: function(response) {
        $("#cloud").jQCloud(response);
      }
    });
  }

  $("#submit").click(function() {
    $("#cloud").empty();
    getCloud();
  });

});
