$('.searchbutton').on('click', function(e) {
  e.preventDefault();
  var keyword = $('[name="artist"]').val();

  $.ajax({
    type:'GET',
    url: 'https://api.spotify.com/v1/search?type=artist&query='+keyword,
    // data: keyword,
    success: function(response) {
      $( "ul.artistlist" ).empty();
      artistarray = response.artists.items,

      artistarray.forEach( function(artist) {
      var listItem = $('<li>').text(artist.name)
      $('ul.artistlist').append(listItem)

      if (artist.images != '') {
        var link = artist.images[0].url
        var image = $('<img>').attr('src', link);
        listItem.append(image)
      }
    })
    },

    error: function(err){
      console.log(err)
      console.log('in da error')
    },
    // datatype: "json"
  });

})
