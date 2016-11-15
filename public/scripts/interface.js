$(document).ready(function(){

  function getCloud() {
    $.ajax({
      url: "https://twittercloud.herokuapp.com/cloud",
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
