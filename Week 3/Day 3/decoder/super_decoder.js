var decoder = require('./decoder.js');

function superdecoder(sentence, type, forwards) {
  var forwards = forwards || false;
  var words = [];
  

  if (type === "every") {
    words = sentence.split(" ");
  }
    else if (type === "odd" ) {
      words = sentence.split(" ").filter(function (words, index) {
        return index % 2 !== 0;
      });
    }
      else if (type === "even") {
        words = sentence.split(" ").filter(function (words, index) {
          return index % 2 === 0 || index === 0;
        });
  }
 if (forwards) {
   return decoder(words);
 }
 else {
   return decoder(words.reverse());
 }
}

var sentence1 = "Attack her nose under here with an itch"
var sentence2 = "Raul Nuñez call never finished"
var sentence3 = "Start rapping this or countless queasy wizards give back jay-z"
var sentence4 = "inner peace is overrated"
var sentence5 = "Fill the proper tank for the cow"

var message = superdecoder(sentence1, "every", false);
console.log(message);
var message = superdecoder(sentence2, "every", true);
console.log(message);
var message = superdecoder(sentence3, "every", false);
console.log(message);
var message = superdecoder(sentence4, "even", true);
console.log(message);

var message = superdecoder(sentence5, "even", false);
console.log(message);
