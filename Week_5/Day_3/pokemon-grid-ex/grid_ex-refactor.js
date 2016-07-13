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

makeGrid('.container')

$('.cell').on('click', function(e) {
  e.preventDefault();
  var clickedEl = $(e.currentTarget)
  pokemonid = Math.floor((Math.random() * 100) + 1);

  $.ajax({
    type: 'GET',
    url: 'http://pokeapi.co/api/v2/pokemon-form/'+pokemonid,
    success: function(response) {
      renderPokemon(clickedEl, response)
      activate(clickedEl)
    }
  })
})

function renderPokemon(container, pokemon) {
  var imageurl = pokemon.sprites.front_default;
  var image = $('<img>').attr('src', imageurl);
  container.append(image)

}

function activate(element){
  return setInterval(function() {
    element.toggleClass('active')
  }, 250)
}


function triggerClicks(){
  var cells = $('.cell');
  var time = 50;

  for(i=0; i<100; i++){
    (function(i){
      setTimeout(function(){
        cells[i].click()
      }, 1500*i);
    }(i));
  }
}

$('.trigger').on('click', function(e) {
  triggerClicks()
})
