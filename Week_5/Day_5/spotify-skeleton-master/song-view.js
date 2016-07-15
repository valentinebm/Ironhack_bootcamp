  if (typeof window.SpotifyApp === 'undefined'){
    window.SpotifyApp = {};
  }

  var SongView = SpotifyApp.SongView = function(model){
    this.model = model;
  }

  SongView.prototype.render = function(){
    $('.title').text(this.model.title)
    $('.author').text(this.model.artistArray)
    $('.cover-image').attr('src', this.model.imageUrl)
    $('.audio').attr('src', this.model.preview)
    $('.audio').addClass('js-player')

    SongView.prototype.changeButton = function(){
    $('.btn-play').toggleClass('playing')
    }

  }
