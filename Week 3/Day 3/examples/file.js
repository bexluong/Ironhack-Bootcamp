// var exampleArray = [ 2, -5, 10, 5, 4, -10, 0 ];
//
// var results = process(exampleArray);
// console.log(results);

// function eat (food) {
//   console.log("Eating some " + food);
// }
//
// eat('pizza');

// //example of the forEach
// var foods = [ 'pizza', 'popcorn', 'beets' ];
//
// foods.forEach(function(food) {
//   console.log(food);
// });

// // THIRD EAMPLes
//
// var foods = [ 'pizza', 'popcorn', 'beets'];
//
// var capsFoods = foods.map(function (food) {
//   return food.toUpperCase();
// });
//
// console.log(capsFoods);

// // REDUCE example
//
// var foods = [ 'pizza', 'popcorn', 'beets'];
//
// var msg = foods.reduce(function(pre, food) {
//   return pre + ' AND ' + food;
// });
//
// console.log(msg)

// FILTER EXAMPLE
var foods = [ 'pizza', 'popcorn', 'beets'];

var bestFood = foods.filter(function (food){
  return food !== 'beets';
});
console.log(bestFood);
