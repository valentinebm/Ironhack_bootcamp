for (var i=0; i<25; i++){
  var cell = $('<div>').addClass('cell blue');
  $('.container').append(cell);
  }

//change all cells
// setInterval(function(){
//   var cells = $('.cell');
//   cells.each(function(index, element){
//     $(element).toggleClass('blue red');
//   })
// }, 400);

// change odds cells
// setInterval(function(){
//   var changingcell = $('.cell:odd');
//   changingcell.toggleClass('blue red');
// }, 400);

// change random cell
setInterval(function(){
  var cells = $('.cell');
  var changingCell = $(cells[Math.floor(Math.random()*cells.length)]);
  changingCell.toggleClass('blue red');
}, 400);
