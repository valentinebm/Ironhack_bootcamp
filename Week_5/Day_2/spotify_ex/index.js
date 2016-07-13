$('.searchbutton').on('click', function(e) {
  e.preventDefault();
  var keyword = $('[name="artist"]').val();

  $.ajax({
      type:'GET',
      url: 'https://api.spotify.com/v1/search?type=artist&query='+keyword,
      success: function(response) {
        $( "ul.artistlist" ).empty();
        $( ".results" ).empty();

        var artistarray = response.artists.items;
        var index = 1;
        var results = $('<h1>').text("Results")
        $('.results').append(results)

        artistarray.forEach( function(artist) {
          var listItem = $('<a href="">').text(artist.name)
          $('ul.artistlist').append(listItem)
          $('ul.artistlist').append($('<hr>'))
          listItem.addClass("link" + index++)
          listItem.attr('id', artist.id)
          listItem.addClass("link")

            if (artist.images != '') {
              var link = artist.images[0].url
              var image = $('<img>').attr('src', link);
              listItem.append(image)
            }

        })


        $('.link').on('click', function(e) {
          e.preventDefault();
          $( "ul.albums" ).empty();
          $( ".albumstitle" ).empty();
          artistid = this.id
          url = 'https://api.spotify.com/v1/artists/'+artistid+'/albums'
          var albums = $('<h3>').text("Albums")
          $('.albumstitle').append(albums)

          $.ajax({
            type:'GET',
            url: url,
            success: function(response) {
              artistalbums = response.items,
                artistalbums.forEach( function(album){
                  var name = $('<li>').text(album.name)
                  $('.albums').append(name)
                  })
            }
          })
        })
    },

    error: function(err){
      console.log(err)
      console.log('in da error')
    },
    // datatype: "json"
  });

})
