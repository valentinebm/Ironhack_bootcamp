var PokemonController = function(){
  // console.log('in da pokemon controller')
  this.setListeners()
};

PokemonController.prototype.fetchPokemon = function(e) {
  var clickedEl = $( e.currentTarget)
  var url = clickedEl.data('pokemon-uri');

  $.ajax({
      url: url,
      success: this.render,
    });
}


PokemonController.prototype.render = function(pokemonData) {
  $('.js-pokemon-name').text(pokemonData.name)
  $('.js-pokemon-height').text(pokemonData.height)
  $('.js-pokemon-weight').text(pokemonData.weight)
  $('.js-pokemon-national_id').text('#' + pokemonData.national_id)
  //modal is a method added by bootstrap
  $('.modal').modal('show')
}



PokemonController.prototype.setListeners = function(){
  var controller = this;
  $('.js-show-pokemon').on('click', this.fetchPokemon.bind(this))
    //this === e.currentTarget --->jquery feature
}
