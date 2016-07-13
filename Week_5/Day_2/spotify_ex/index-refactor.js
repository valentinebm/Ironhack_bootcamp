$(function () {

var Trigger = function (buttonclass, inputname) {
  this.buttonclass = buttonclass
  this.inputname = inputname;
}

var SearchController = function(trigger) {
  this.button = trigger.buttonclass;
  this.input = trigger.inputname;
  this.setListeners();
};

SearchController.prototype.setListeners = function(){
  var input = this.input
  var controller = this
  $(this.button).on('click', function(e) {
    e.preventDefault();
    controller.getData($('input').val())
    });
}

SearchController.prototype.getData = function(keyword){
  var controller = this
  $.ajax({
      type:'GET',
      url: 'https://api.spotify.com/v1/search?type=artist&query='+keyword,
      success: function(response){
      controller.fetchArtists(response)
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
      addImage(listItem, image)
    }
  })
}

function cleanLeftSide(){
  $('.leftside').empty();
}

function addImage(artist, image){
  artist.append(image)
}

function cleanRightSide(){
  $( "ul.albums" ).empty();
  $( ".albumstitle" ).empty();
}

SearchController.prototype.displayAlbums = function(albums){
  albums.forEach( function(album){
    var name = $('<li>').text(album.name)
    $('.albums').append(name)
  })
}

SearchController.prototype.getAlbums = function(artistid, url){
  function addTitle(){
    var albums = $('<h3>').text("Albums")
    $('.albumstitle').append(albums)
  }

  addTitle()
  $.ajax({
    type:'GET',
    url: url,
    success: function(response) {
      controller.displayAlbums(response.items)
    }
  })
}

SearchController.prototype.fetchArtists = function(response) {

  cleanLeftSide();
  var artistarray = response.artists.items;
  var index = 1;
  var results = $('<h1>').text("Results");

  if($('.leftside').is(':empty')){
    $('.leftside').append(results);}

  controller.displayArtists(artistarray, index);


  $('a').on('click', function(e) {
    e.preventDefault();
    cleanRightSide();
    artistid = this.id,
    url = 'https://api.spotify.com/v1/artists/'+artistid+'/albums'
    controller.getAlbums(artistid, url);
  })
}

var trigger = new Trigger('.searchbutton', '[name="artist"]')
var controller = new SearchController(trigger);
})
