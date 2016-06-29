function caesarCipher(message) {
  var letters = message.split('');
  var ascii_switched = letters.map(function(letter) {
    return letter.charCodeAt()-3;
  })
  var new_message = ascii_switched.map(function(number){
    return String.fromCharCode(number)
  }).join("")
  return new_message;
}

var encrypted = caesarCipher("brutus");

console.log(encrypted)
