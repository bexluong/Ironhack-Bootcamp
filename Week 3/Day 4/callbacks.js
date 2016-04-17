// //ex named call back
//
// function shout () {
//   console.log("Ahjajajajja!");
// }
//
// setTimeout(shout, 2000);
//
// // example of recursion callback
//
// function blastOff(seconds) {
//
//   function countdown () {
//     console.log(seconds);
//     seconds -= 1;
//     if (seconds >= 0) {
//           setTimeout (countdown, 1000);
//     } else {
//         console.log('Blast off!!!');
//     }
//   }
//   countdown();//TRIGGERS THE FNC AND TRICGGERS FOREVER
//
// }
// blastOff (5);

//example 

function sleep (seconds,message) {

  var ms = seconds * 1000;
  setTimeout (message,ms);
}

sleep (10, function () {
  console.log ("It's been 10 seconds.");
});
