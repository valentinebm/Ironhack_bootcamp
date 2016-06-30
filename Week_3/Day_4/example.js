// var person = {}
//
// var person2 = new Object()
//
// person['name'] = 'Thor'
//
// person.sayHi = function(){console.log('Hi, my name is ' + this.name)}
//
// person.sayHi();
//



var Person = function(name){
  this.name = name;
}

Person.prototype.sayHi = function(){console.log('Hi, I\0m ' + this.name)}

var thor = new Person('Thor')
var matias = new Person('Matias')
thor.sayHi();
console.log(Object.keys(thor))


// var animal = {
//   name: "Shadow",
//   noise: "Brrr",
//
//   shout: function(){
//     console.log("Mooo!")
//   },
//
//   makeNoise: function (){
//     console.log(this.noise + "!!!")
//   }
// }
// animal.makeNoise()



// var Animal = function(name, noise) {
//   this.name = name;
//
//   this.noise = noise;
//
//   this.makeNoise = function(){
//     console.log(this.noise + "!!!");
//   }
// };
// var newanimal = new Animal("unicorn", "biiiim")
// newanimal.makeNoise()


var Car = function(model, noise, number_of_weels = 4) {
  this.model = model;
  this.noise = noise;
}

Car.prototype.makeNoise = function (){
  console.log(this.noise);
}

var mycar = new Car("BMW", "POORRROHM")
mycar.makeNoise()




var x = {
  self:
  function(){(function(){console.log(this)}).bind(this)()}
}

x.self();




var x = {
  name: 'matias',
  printName: function(){
    console.log(this.name)
  }
}

x.printName()

var f = x.printName

// f();
f.bind(x)();




function thisIsACallback() {
  console.log("hi")
}

// function highOrderFunction(callback){
//   callback();
// }
//
// highOrderFunction(thisIsACallback);


//
// sleep(10, function(){
//   console.log("It's been 10 seconds")
// })
//
// function sleep(time, callback){
//   var milliseconds = time * 1000;
//   setTimeout(callback, milliseconds)
// }
//



blastOff(10)

function blastOff(n){
  counter = 1;

  function repeat(){
  if (counter <= n+1) {
    console.log(counter);
    counter++;
    setTimeout(repeat, 1000);
  }
  else {
    console.log("It's been 10 seconds! BlastOff!")
  }
}
repeat()
}
