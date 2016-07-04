var Viking = function(name, health, strength){
  this.name = name;
  this.health = health;
  this.strength = health;
  this.warcry = "VIKIIIIING"
}


Viking.prototype.selectEnemy = function(){
  var number = Math.floor((Math.random() * (saxonsArray.length)) + 0);
  saxonsArray[number].cry()
  saxonsArray[number].reduceHealth(this.strength)
}


Viking.prototype.shoutWarCry = function(){
  console.log(this.warcry);
}


saxonsArray = []

var Saxon = function(health=Math.floor((Math.random() * 50) + 40), strength=Math.floor((Math.random() * 10) + 1)){
  this.health = health;
  this.strength = strength;
  //below is a way to keep a count in constructor
  // Saxon.numInstances = (Saxon.numInstances || 0) + 1;
  saxonsArray.push(this);
}

Saxon.prototype.cry = function(){
  console.log("booohooo, it huuurts")
}

Saxon.prototype.reduceHealth = function(strength){
  var healthbefore = this.health;
  var healthafter = this.health - strength;

  console.log("You motherfucker bring my health down from: "+healthbefore+" to "+healthafter);
}

var lorenzo = new Viking("lorenzo", 100, 20)
var johannus = new Viking("johannus", 100, 20)
var valentine = new Viking("valentine", 120, 22)



var saxon1 = new Saxon
var saxon2 = new Saxon
var saxon3 = new Saxon


lorenzo.selectEnemy()
