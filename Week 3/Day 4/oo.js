// //ex 1 how to create a class call without "new"
//
// var animal = {
//   name: "Shadow",
//   noise: "Brr",
//
//     shout: function () {
//       console.log("Mooo!");
//     },
//     makeNoise: function(){
//       console.log(this.noise + "!!!");
//     }
// };
//
// animal.makeNoise();

// // ex 2 - this is a better way to create class
//
// var Animal = function (name, noise) {
//
//   this.name = name;
//
//   this.noise = noise;
//
//   this.makeNoise = function () {
//     console.log(this.noise + "!!!!!!?!");
//   };
// };
//  var animal = new Animal("Brukie", "broof");
//  var anotherAnimal = new Animal("Ouuwie", "jiglipff");
//
// animal.makeNoise();
// anotherAnimal.makeNoise();
//
// // ex 3 - prototypes

var Animal = function (name, noise) {

  this.name = name;
  this.noise = noise;

  };

    Animal.prototype.makeNoise = function () {
      console.log(this.noise + "!!!!!!?!");
};
 var animal = new Animal("Brukie", "broof");
 var anotherAnimal = new Animal("Ouuwie", "jiglipff");

animal.makeNoise();
anotherAnimal.makeNoise();
