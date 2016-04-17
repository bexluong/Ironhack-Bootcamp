// var exampleArray = [ 2, -5, 10, 5, 4, -10, 0 ];
//
// function process(data) {
//   var positions = [];
//   data.forEach(function (value, i) {
//     data.forEach(function(value2,j) {
//       if (value + value2 === 0)
//         positions.push (i + " " + j)
//     });
//   });
//   console.log("Sum these pairs and get zero:");
//   console.log(positions);
// }
//
// process(exampleArray);
var numbers = '80:70:90:100';

function averageColon(numbers) {
  var separatedNumbers = numbers.split(':');
  var sum = 0;
  separatedNumbers.forEach(function (number) {
    sum += parseInt(number);
  });
  return sum/numbers.length;
}




var results = averageColon(numbers);
console.log(results)
