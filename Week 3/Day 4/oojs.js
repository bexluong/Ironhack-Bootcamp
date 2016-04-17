
var Car = function (model, noise) {
  this.model = model;
  this.noise = noise;
  //this.numberOfWheels = 4; can also go as a prototype(can be used for variables as well as functions)
};
  Car.prototype.makeNoise = function () {
    console.log("my model is " + this.model + " i have " + this.numberOfWheels +" wheels" +" and I make this noise: " + this.noise );
  };

Car.prototype.wheels = 4;

  var newcar = new Car("model x", "zoom zoom");
  newcar.makeNoise();
