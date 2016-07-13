//function style

function makeNoise() {
  console.log('Meoww');
  console.log('makenoise()this:', this)
}

makeNoise();
console.log('window:', window);

//method style
var cat;
cat = {
  makeNoise: function() {
    console.log("Meoww");
    console.log("cat.makeNoise()this:", this);
  }
}

cat.makeNoise();
console.log("cat object:", cat);

//constructor style
function Cat() {
  this.sound = "Meoww";
  console.log("new Cat() this", this)
}

var cat = new Cat();
console.log("Cat instance:", cat)

//some more
var Animal = function (name, sound){
  this.name = name;
  this.sound = sound;
}

Animal.prototype.makeNoise = function(){
  console.log(this.sound);
}

Animal.prototype.startNoise = function(){
  setInterval(this.makeNoise.bind(this), 5);
}
