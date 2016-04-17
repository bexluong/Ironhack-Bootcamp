//
//
// function caesarCipher(message, shift) {
//   var digitz;
//   var letterz;
//   var shift = -3
//   var orgMessage = message.split('');
//   var encryptionz = orgMessage.map(function(num) {
//         digitz = num.charCodeAt();
//     if (num.match(/[a-z]/i)) {
//        letterz = String.fromCharCode(digitz + shift);
//
//     } else {
//       letterz = String.fromCharCode(digitz);
//     }
//     return letterz;
//   });
//   return encryptionz.join('');
// }
// var encrypted = caesarCipher("butus???");
// console.log(encrypted);




function caesarCipher(message, shift) {
  var digitz;
  var letterz;
   shift = -3;
  var orgMessage = message.split('');
  var encryptionz = orgMessage.map(function(num) {
        digitz = num.charCodeAt();
    if (num.match(/[a-z]/i)) {
       letterz = String.fromCharCode(digitz + shift);

    } else {
      letterz = String.fromCharCode(digitz);
    }
    return letterz;
  });
  return encryptionz.join('');
}
var encrypted = caesarCipher("Et tu, brute?", 6);
console.log(encrypted);
