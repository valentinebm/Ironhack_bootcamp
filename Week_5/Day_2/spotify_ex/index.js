var SearchController = function(keyword) {
  this.keyword = keyword;
};

$('.searchbutton').on('click', function(e) {
  e.preventDefault();
  var keyword = $('[name="artist"]').val();
  controller = new SearchController(keyword)
  controller.getData(keyword)
});


SearchController.prototype.getData = function(keyword){
  $.ajax({
      type:'GET',
      url: 'https://api.spotify.com/v1/search?type=artist&query='+keyword,
      success: function(response){
      controller.fetchArtists(response)
      }
  });
}


SearchController.prototype.displayArtists = function(artists, index){
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

function cleanLeftSide(){
  $( "ul.artistlist" ).empty();
  $( ".results" ).empty();
}

function addImage(artist, image){
  artist.append(image)
}

function cleanRightSide(){
  $( "ul.albums" ).empty();
  $( ".albumstitle" ).empty();
}

SearchController.prototype.fetchArtists = function(response) {
  cleanLeftSide();
  var artistarray = response.artists.items;
  var index = 1;
  var results = $('<h1>').text("Results")
  $('.results').append(results);

  controller.displayArtists(artistarray, index);

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

  $('a').on('click', function(e) {
    e.preventDefault();
    cleanRightSide();
    artistid = this.id,
    url = 'https://api.spotify.com/v1/artists/'+artistid+'/albums'
    getAlbums(artistid, url);
  })
}
