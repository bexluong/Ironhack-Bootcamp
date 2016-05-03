
var Viking = function(name, health, strength) {
  this.name = name;
  this.health = health;
  this.strength = strength;
  this.warCry = function (){
    console.log("Odin owns you all!");
  };
};
var VikingPit = function (vikingEin, vikingTveir) {
  this.round = 3;
  this.vikingEin = vikingEin;
  this.vikingTveir = vikingTveir;

  function closeToDeath(){
  
  };

for (i = 0; i < this.round; i++) {
    vikingEin.health -= vikingTveir.strength;
    vikingTveir.health -= vikingEin.strength;
    console.log("Round " + i + " finished." + "\n"+ vikingTveir.name + " health is: " +
    vikingTveir.health + "\n" + vikingEin.name + " health is: " + vikingEin.health );
   }
 };




// var Saxons = function(health, strength) {
//   this.health = Math.floor(Math.random() * 100) + 1;
//   this.strength = Math.floor(Math.random() * 100) + 1;
// };



var alvilda  = new Viking("Alvilda", 250, 15);
var eydis = new Viking("Eydis", 200, 10);
var fight = new VikingPit(alvilda, eydis);
