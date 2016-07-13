// $(function () {
//   for (var i = 0; i < 10; i++) {
//     var button = $('<button>').text('click #' + i);
//     button.attr('id', i)
//     $('.container').append(button);
//     }
//     $('button').click(function(e){
//     e.preventDefault();
//     console.log('You clicked on button #' + this.id)
//   });
// });


//simpler

$(function(){
  for (let i=0; i<10; i++) {
    var button = $('<button>').text('click #' + i);
    $('.container').append(button);
    button.on('click', function(e){
      // console.log($(e.currentTarget))
      // console.log(this)
      console.log('You clicked on the button ' + i);
    })
  }
})
