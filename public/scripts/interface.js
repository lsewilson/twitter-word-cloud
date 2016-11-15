$(document).ready(function(){

  function getCloud() {
    $.ajax({
      url: "http://localhost:9393/cloud",
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
