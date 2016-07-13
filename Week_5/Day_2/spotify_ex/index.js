$('.searchbutton').on('click', function(e) {
  e.preventDefault();
  var keyword = $('[name="artist"]').val();
  getData(keyword)
});

function getData(keyword){
  $.ajax({
      type:'GET',
      url: 'https://api.spotify.com/v1/search?type=artist&query='+keyword,
      success: function(response) {
        cleanLeftSide();

        var artistarray = response.artists.items;
        var index = 1;
        var results = $('<h1>').text("Results")
        $('.results').append(results);

        displayArtists(artistarray, index)


        $('a').on('click', function(e) {
          e.preventDefault();
          cleanRightSide();
          artistid = this.id,
          url = 'https://api.spotify.com/v1/artists/'+artistid+'/albums'
          getAlbums(artistid, url);
        })
      },
  });
}

function cleanLeftSide(){
  $( "ul.artistlist" ).empty();
  $( ".results" ).empty();
}


function addImage(artist, image){
  artist.append(image)
}

function displayArtists(artists, index){
    artists.forEach( function(artist) {
    var listItem = $('<a href="">').text(artist.name)
    $('ul.artistlist').append(listItem, $('<hr>'))
    listItem.attr('id', artist.id)

      if (artist.images != '') {
        var image = $('<img>').attr('src', artist.images[0].url);
        addImage(listItem, image)
      }
  })
}

function cleanRightSide(){
  $( "ul.albums" ).empty();
  $( ".albumstitle" ).empty();
}

function getAlbums(artistid, url){
  addTitle()

  $.ajax({
    type:'GET',
    url: url,
    success: function(response) {
      displayAlbums(response.items)
    }
  })
}

function addTitle(){
  var albums = $('<h3>').text("Albums")
  $('.albumstitle').append(albums)
}

function displayAlbums(artistalbums){
    artistalbums.forEach( function(album){
    var name = $('<li>').text(album.name)
    $('.albums').append(name)
    })
}
