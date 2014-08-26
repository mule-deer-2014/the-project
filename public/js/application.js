$(function() {

  $(".signup").on("click", userSignup)

  var userSignup = function(e) {
    e.preventDefault
    $.ajax {
      url: "/signup",
      type: "post",
      data: $(this).serialize()
    }.done(function(response){
      console.log(response)
    })
  }



});
