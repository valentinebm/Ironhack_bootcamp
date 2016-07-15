$(function(){
  $('.search-song').on('submit', function(e){
    e.preventDefault();
    // console.log($(e.currentTarget))
    var query = $('.input').val()

    $.ajax({
      type: 'GET',
      url: 'https://api.spotify.com/v1/search?query='+query+'&type=track',
      success: function(response){
        var songData = response.tracks.items[0]
        renderSong(songData)
      }
    })
  })


  function renderSong(songData){
    var title = songData.name
    var imageUrl = songData.album.images[0].url
    var artistArray = []
    songData.artists.forEach( function(artist){
      artistArray.push(' '+artist.name)
    })

    $('.title').text(title)
    $('.author').text(artistArray)
    $('.cover-image').attr('src', imageUrl)

  }


})
