var Viking = function(name, health, strength){
  this.name = name;
  this.health = health;
  this.strength = health;
  this.warcry = "VIKIIIIING"
}


Viking.prototype.selectEnemy = function(){
  var number = Math.floor((Math.random() * (saxonsArray.length)) + 0);
  saxonsArray[number].cry()
  saxonsArray[number].reduceHealth()
}


Viking.prototype.shoutWarCry = function(){
  console.log(this.warcry);
}


saxonsArray = []

var Saxon = function(health=Math.floor((Math.random() * 50) + 1), strength=Math.floor((Math.random() * 50) + 1)){
  this.health = health;
  this.strength = strength;
  //below is a way to keep a count in constructor
  // Saxon.numInstances = (Saxon.numInstances || 0) + 1;
  saxonsArray.push(this);
}

Saxon.prototype.cry = function(){
  console.log("booohooo, it huuurts")
}

Saxon.prototype.reduceHealth = function(){
  var healthbefore = this.health;
  var healthafter = this.health - 10;
  console.log("You motherfucker bring my health down from: "+healthbefore+" to "+healthafter);
}

var lorenzo = new Viking("lorenzo", 100, 100)
var johannus = new Viking("johannus", 100, 100)
var valentine = new Viking("valentine", 120, 120)



var saxon1 = new Saxon
var saxon2 = new Saxon
var saxon3 = new Saxon


lorenzo.selectEnemy()
