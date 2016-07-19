$(function() {

  $('button').on('click', function(e) {
    e.preventDefault();
    ingredient_id = $(this).attr("class")
    sandwich_id = (window.location.href.split('/'))[4]

    $.ajax({
      type: 'POST',
      url: 'http://localhost:3000/sandwiches/'+sandwich_id+'/ingredients/add',
      data: {ingredient: ingredient_id},
      success: function(response){
        console.log("success")

        var ingredient_name = response.name
        console.log(response.name)
        var newingredient = "<li>" + ingredient_name + "</li>"
        $(newingredient).appendTo("ul");

        // window.location = "http://localhost:3000/sandwiches/"+sandwich_id+"/ingredients/"
      },

      error: function(){
        console.log("error")
      }


    })

  })


});
