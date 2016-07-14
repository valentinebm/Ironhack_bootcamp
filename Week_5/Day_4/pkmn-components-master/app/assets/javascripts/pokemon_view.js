(function(){
  if (typeof window.PokemonApp === 'undefined'){
    window.PokemonApp = {};
  }

  var PokemonView = PokemonApp.PokemonView = function(model){
    this.model = model;
  };

  PokemonView.prototype.render = function() {
    $('.js-pokemon-name').text(this.model.name)
    $('.js-pokemon-height').text(this.model.height)
    $('.js-pokemon-weight').text(this.model.weight)
    $('.js-pokemon-national_id').text('#' + this.model.national_id)
    $('.js-pokemon-attack').text(this.model.attack)
    $('.js-pokemon-defense').text(this.model.defense)
    $('.js-pokemon-happiness').text(this.model.happiness)

    console.log(this.model.image)

    $('.js-pokemon-image').empty().prepend('<img src="' + this.model.image + ' "/>')

    //modal is a method added by bootstrap
    $('.modal').modal('show')
  }
})()
