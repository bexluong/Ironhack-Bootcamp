var read = require('read');



function Questions(question, answer, id) {
  this.question = question;
  this.answer = answer;
  this.id = id;
}

var questionArray = new Array();
questionArray[0] = new Questions("Who's better than bad boy?", "Nooobody", 1);
questionArray[1] = new Questions("What does e equal?", "MC squared", 2);
questionArray[2] = new Questions("What is the smallest member of the flute family?", "Piccolo", 3);


function Quiz() {
  this.askQuestion = function() {
    options = {
      prompt: this.question
    };
    read(options, displayName);
    // The prompt itself, passing options, and using our callback function after input

    function displayName(err, answer) {
      console.log("Your name is: " + this.answer);
    }
    // Outputs whatever the user has entered back to the console
  };
}

var newgame = new Quiz();
newgame.askQuestion();
