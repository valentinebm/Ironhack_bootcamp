(function(){
  window.PokemonApp = window.PokemonApp || {};

  var PokemonModel = PokemonApp.PokemonModel = function(url){
    this.url = url
  }

    PokemonModel.prototype.fetch = function(anything) {
      // 'anything' is the function passed when fetch is called: 'view.render'
      // the function will be called function-style on success
      var model = this;
      $.ajax({
          url: this.url,
          success: function (pokemonData){
            model.name = pokemonData.name;
            model.national_id = pokemonData.national_id;
            model.height = pokemonData.height;
            model.weight = pokemonData.weight;
            model.attack = pokemonData.attack;
            model.defense = pokemonData.defense;
            model.happiness = pokemonData.happiness;
            model.imagelink = pokemonData.sprites[0].resource_uri

              $.ajax({
                url: model.imagelink,
                success: function (response){
                  model.image = ('http://pokeapi.co'+response.image)
                  // console.log(model.image)
                  anything(); // call 'view.render' function-style
                }
              })

          },
        });
  }
})()
