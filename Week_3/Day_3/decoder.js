var words = [
    "dead",         // 1st -> d
    "bygone",       // 2nd -> y
    "landing",      // 3rd -> n
    "cheaply",      // 4th -> a
    "assumed",      // 5th -> m
    "incorrectly",  // 1st -> i
    "attention",    // 2nd -> t
    "agent"         // 3rd -> e
];


function decoder(array){
  var index = 0;
  var secretMessage = '';

  array.forEach(function(word,index){
    secretMessage += word[index%5];
  })
  return secretMessage
}

console.log(decoder(words))


// function see(array){
//   array.forEach(function(word, index){
//     console.log(i)
//   })
// }
// see(words)

var sentence, message;

sentence = "fill the proper tank for the cow"

// function superdecode(sentence){
//  var array = sentence.split(" ")
//   words = [];
//   array.forEach(function(word,index){
//     if (index%2 == 0) {
//     words.push(word)
//     }
//   })
//   words = words.reverse()
//   return decoder(words)
// }
// console.log(superdecode(sentence))


function super_decoder(sentence, type, order) {
  var array = sentence.split(' ');

  if (type == 'even') {
    array = array.filter(function(word, index) {
      return index % 2 == 0;
    })
  }

  if (type == 'odd') {
    array = array.filter(function(word,index){
      return index % 2 != 0;
    })
  }

  if (order == 'reverse') {
    array = array.reverse();
  }

  return decoder(array)
}

console.log(super_decoder(sentence, 'even', 'reverse'))
