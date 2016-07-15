  if (typeof window.SpotifyApp === 'undefined'){
    window.SpotifyApp = {}
  }

  var SongController = SpotifyApp.SongController = function(){
    this.setListeners();
  };

  SongController.prototype.setListeners = function() {
    $('.search-song').on('submit', this.onSubmit.bind(this));
  }

  SongController.prototype.onSubmit = function(e){
      e.preventDefault();
      var url = $('.input').val()
      this.model = new SongModel(url);
      this.view = new SongView(this.model)
      this.model.fetch(this.view.render.bind(this.view))
      $('.btn-play').on('click', this.onClick.bind(this));
  }

  SongController.prototype.onClick = function(e){
    e.preventDefault();
    var player = $('.js-player');

    if ((player.prop('paused')))
    {player.trigger('play')
      ;
    }
    else {
      player.trigger('pause')
    }

    this.view.changeButton();
  }

  var controller = new SongController()
