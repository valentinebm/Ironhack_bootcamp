$(function () {
  for (var i = 0; i < 10; i++) {
    var button = $('<button>').text('click #' + i);
    button.attr('id', i)
    $('.container').append(button);
    }
    $('button').click(function(e){
    e.preventDefault();
    console.log('You clicked on button #' + this.id)
  });
});
