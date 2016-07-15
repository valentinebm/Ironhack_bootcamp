$(function(){

  var SongView = function(model){
    this.model = model;
  }

  SongView.prototype.render = function(){
    // console.log(this)
    $('.title').text(this.model.title)
    $('.author').text(this.model.artistArray)
    $('.cover-image').attr('src', this.model.imageUrl)
  }

})
