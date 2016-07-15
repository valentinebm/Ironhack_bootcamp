$(function(){

  var SongController = function(){
    this.setListeners();
  };

  SongController.prototype.setListeners = function() {
    $('.search-song').on('submit', this.onSubmit.bind(this))
  }

  SongController.prototype.onSubmit = function(e){
      e.preventDefault();
      var clickedEl = $('.input')
      var url = $('.input').val()
      var model = new SongModel(url);
      var view = new SongView(model)
      model.fetch(view.render.bind(view))
  }

  var SongModel = function(url){
    this.url = url
  }

  SongModel.prototype.fetch = function(callback){
    var model = this;
    $.ajax({
      type: 'GET',
      url: 'https://api.spotify.com/v1/search?query='+this.url+'&type=track',
      success: function(songData){
        var song = songData.tracks.items[0]
        model.title = song.name
        model.imageUrl = song.album.images[0].url
        model.artistArray = []
          song.artists.forEach( function(artist){
            model.artistArray.push(' '+artist.name)
          })
        callback()
      }
    })
  }

  var SongView = function(model){
    this.model = model;
  }

  SongView.prototype.render = function(){
    // console.log(this)
    $('.title').text(this.model.title)
    $('.author').text(this.model.artistArray)
    $('.cover-image').attr('src', this.model.imageUrl)
  }

  var controller = new SongController()

})
