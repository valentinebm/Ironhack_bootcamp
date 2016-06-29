function caesarCipher(message, shift=3) {
  var letters = message.split('');
  var ascii_switched = letters.map(function(letter) {
    if ((letter.charCodeAt()>90 && letter.charCodeAt()<97) || (letter.charCodeAt()>122 || letter.charCodeAt()<65)) {
    return letter.charCodeAt();
    }
    else {
      return letter.charCodeAt()+shift;
    }
  })
  var new_message = ascii_switched.map(function(number){
    return String.fromCharCode(number)
  }).join("")
  return new_message;
}

var encrypted = caesarCipher("Et tu, brute?", 6);

console.log(encrypted)
