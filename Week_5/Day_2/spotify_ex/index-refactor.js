$(function () {

var SearchController = function(buttonclass, inputname) {
  this.button = buttonclass;
  this.input = inputname;
  this.setListeners();
};

SearchController.prototype.setListeners = function(){
  var input = this.input
    $(this.button).on('click', function(e) {
    e.preventDefault();
    controller.getData($('input').val())
    }.bind(this));

    $('a').on('click', function(e) {
      e.preventDefault();
      $( "ul.albums" ).empty();
      $( ".albumstitle" ).empty();
      artistid = this.id,
      url = 'https://api.spotify.com/v1/artists/'+artistid+'/albums'
      controller.getAlbums(artistid, url);
    })
}

SearchController.prototype.getData = function(keyword){
  var controller = this
  $.ajax({
      type:'GET',
      url: 'https://api.spotify.com/v1/search?type=artist&query='+keyword,
      success: function(response){
      controller.renderPage(response)
      }
  });
}

SearchController.prototype.displayArtists = function(artists, index){
  var content = $('<div>').addClass('content');
  $('.leftside').append(content)

  artists.forEach( function(artist) {
  var listItem = $('<a href="">').text(artist.name)
  $(content).append(listItem, $('<hr>'))
  listItem.attr('id', artist.id)

    if (artist.images != '') {
      var image = $('<img>').attr('src', artist.images[0].url);
      listItem.append(image)
    }
  })
}

SearchController.prototype.displayAlbums = function(albums){
  var title = $('<h3>').text("Albums")
  $('.albumstitle').append(title);

  albums.forEach( function(album){
    var name = $('<li>').text(album.name)
    $('.albums').append(name)
  })
}

SearchController.prototype.getAlbums = function(artistid, url){
  $.ajax({
    type:'GET',
    url: url,
    success: function(response) {
      controller.displayAlbums(response.items)
    }
  })
}

SearchController.prototype.renderPage = function(response) {
  $('.leftside').empty();
  $( "ul.albums" ).empty();
  $( ".albumstitle" ).empty();

  var artistarray = response.artists.items;
  var index = 1;
  var results = $('<h1>').text("Results");
  $('.leftside').append(results);
  controller.displayArtists(artistarray, index);
  controller.setListeners()

}

var controller = new SearchController('.searchbutton','[name="artist"]')
})
