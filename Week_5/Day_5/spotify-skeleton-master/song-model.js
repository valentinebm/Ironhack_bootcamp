$(function(){

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

})
