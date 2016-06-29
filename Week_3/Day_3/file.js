var exampleArray = [2, -5, 10, 5, 4, -10, 0];
//
// function process(array) {
//   var result = []
//   var a;
//   var b;
//
//   for (var i=0; i<array.length; i++) {
//     a = array[i];
//
//     for (var j=0; j<array.length; j++) {
//       b = data[j]
//       if ( (parseInt(a) + parseInt(b)) === 100 && result.indexOf(a+","+b) == -1 && result.indexOf(b+","+a) == -a) {
//       }
//     }
//   }
//
//   for (var i=0; i<result.length; i++) {
//     result[i] = result[i].split(',')
//   }
// //   return result
// // }
//
//
// console.log(process(exampleArray))

function process(array) {
  var result = [];
  array.forEach(function(number1, index1) {
    array.forEach(function(number2, index2){
      if (number1 + number2 == 0){
        result.push(index1.toString() + ',' + index2.toString())
      }
    })
  })
  return result
}

console.log(process(exampleArray))


function greet(){
  var dog = 'dog'

  function saydog(){
    console.log(dog);
  }
  saydog()
}

greet()

function transform(string) {
  var numbers_array=string.split(':').map(Number);
  var sum = array.reduce(function(sum,b
  num) {
    return sum + num}, 0);
    //we can use parseInt(sum) and parseInt(num) if map not done
  return sum/array.length
}

console.log(transform("20:20:20"))
