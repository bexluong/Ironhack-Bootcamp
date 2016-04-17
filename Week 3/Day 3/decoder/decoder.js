var words, message;

words = [
  "dead",
  "bygone",
  "landing",
  "cheaply",
  "assumed",
  "incorrectly",
  "attention",
  "agent"
];

function decoder(words) {
  var index = 0;
  var secretMessage = "";
  for (var i = 0; i < words.length; i++) {
    secretMessage += words[i].charAt(index);
    // index += 1;
    // if (index === 5) { index = 0};
    index = (index + 1) % 5;
  }
  return secretMessage;
}

module.exports = decoder;
// message = decoder(words);
// console.log(message)
