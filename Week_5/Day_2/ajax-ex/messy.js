$(function(){
  $.ajax({
    type: 'GET',
    url: 'https://ironhack-characters.herokuapp.com/characters',
    success: function(characters) {
      characters.forEach( function(character) {
        var listItem = $('<li>').text(character.name +' is a ' + character.occupation + ' with ' + character.weapon)
        $('ul.characters').append(listItem)
      })
    },
    error: function (err) {
      console.log('in da error');
    }
  })
})

  $('.newcharacter').on('click', function(e) {
    e.preventDefault();
    var name = $('[name="name"]').val();
    var occupation = $('[name="occupation"]').val();
    var weapon = $('[name="weapon"]').val();
    var newCharacter = {
      name: name,
      occupation: occupation,
      weapon: weapon
    };
    console.log(newCharacter)
    $.ajax({
      type:'POST',
      url: 'https://ironhack-characters.herokuapp.com/characters',
      data: newCharacter,
      success: function(response) {
        console.log(response)
      },
      error: function(err){
        console.log(err)
        console.log('in da error')
      },
      datatype: "json"
    })

})
