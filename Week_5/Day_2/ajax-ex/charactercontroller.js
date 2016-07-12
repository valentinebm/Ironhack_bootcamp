​
$(function () {
​
  var CharacterController = function (container, formElement, url) {
    this.container = container;
    this.formElement = formElement;
    this.url = url;
    this.characters = [];
    this.setListeners();
  }
​
  CharacterController.prototype.fetchCharacters = function () {
    $.ajax({
      type: 'GET',
      url: this.url,
      success: this.save.bind(this),
      error: function (err) {
        console.log('in da error');
      }
    })
  }
​
  CharacterController.prototype.setListeners = function () {
    this.formElement.on('submit', this.saveCharacter.bind(this));
  }
​
  CharacterController.prototype.renderCharacter =
​
  CharacterController.prototype.render = function () {
    var that = this;
    this.characters.forEach(function (character) {
      var listItem = $('<li>').text(character.name + ' is a ' + character.occupation + ' with ' + character.weapon);
      that.container.append(listItem);
    })
  }
​
  CharacterController.prototype.save = function (characters) {
    this.characters = characters;
    this.render();
  }
​
  CharacterController.prototype.saveCharacter = function (e) {
    e.preventDefault();
    var newCharacter = {
      name: $('[name="name"]').val(),
      occupation: $('[name="occupation"]').val(),
      weapon: $('[name="weapon"]').val()
    };
    this.characters.push(newCharacter);
    $.ajax({
      type: 'POST',
      url: this.url,
      data: newCharacter,
      success: this.render.bind(this),
      error: function (err) {
        console.log('in da error');
      }
    })
  }
  var container = $('ul.characters');
  var formElement = $('#new-character');
  var url = 'http://ironhack-characters.herokuapp.com/characters';
  var controller = new CharacterController(container, formElement, url);
  controller.fetchCharacters();
})
