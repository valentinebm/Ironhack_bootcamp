function caesarCipher(message, shift=3) {
  var letters = message.split('');
  var ascii_switched = letters.map(function(letter) {
    var number = letter.charCodeAt();
    if ((number>90 && number<97) || (number>122) || (number<65)) {
    return letter;
    }

    else {

      if (number + shift > 122) {
        letter = String.fromCharCode(number+shift-26)
      }

      else if (number + shift < 65) {
        letter = String.fromCharCode(number+shift+26)
      }

      else {
        letter = String.fromCharCode(number+shift)
      }

      return letter
    }

  })
  var new_message = ascii_switched.join("")
  return new_message
}



var encrypted = caesarCipher("Et tu, brute?", 6);

console.log(encrypted)
