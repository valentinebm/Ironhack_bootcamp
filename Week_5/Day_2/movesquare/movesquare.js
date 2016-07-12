var cells = [];

function makeGrid(root){
  var rows = 10;
  var cols = 10;

  for (var i=0; i<cols; i++) {
    for (var j=0; j<rows; j++) {
      var cell = $('<div/>').addClass('cell');
      var  row= i+1;
      var col=j+1;
      $(root).append(cell);
      cell.attr('col', col);
      cell.attr('row', row);
      cells.push(cell);

    }
  }
};


function initialize(cell){
  cell.toggleClass('pink');
}

makeGrid('.container')
var startingcell = cells[Math.floor(Math.random()*cells.length)]
initialize(startingcell)


$("body").keydown(function(e) {
   if(e.keyCode == 37) { // left
    startingcell.toggleClass('pink')
    };
    $(".cell").toggleClass('green')
  if(e.keyCode == 39) { // right
    $('body').toggleClass('red')
    };
  })
