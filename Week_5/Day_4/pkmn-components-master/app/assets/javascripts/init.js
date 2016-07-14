console.log('hello from init')

$(function () {

$('.js-show-pokemon').on('click', function(e) {

  var url =($(this).attr('data-pokemon-uri'));

  $.ajax({
      type:'GET',
      url: url,
      success: function(response){
        var name = response.name;
        var height = response.height;
        var weight = response.weight;
        var national_id = response.national_id;
        // console.log(response);
        $('.modal-name').text(name)
        $('.modal-height').text(height)
        $('.modal-weight').text(weight)
        $('.national_id').text(national_id)
        $('.modal').modal('show')
      }
  });


});

})
