$(function () {
  var url = 'https://ironhack-characters.herokuapp.com/characters';
  $.ajax({
    url: url,
    success: function(res){
      for(i = 0; i < res.length; i++) {
      var name = res[i].name;
      $('.container').append('<li>'+name+'</li>');
      }
    }
  });
});

function onSubmit (event) {
  event.preventDefault();
  console.debug('SUBMITTED');
	var newCharacter = {
  // Build a new character from the values in the form
  name: $('#name').val(),
  occupation: $('#occupation').val(),
  debt: $('#debt').val(),
  weapon: $('weapon').val()
};

  // Send a post request with the data for the new character

  $.ajax({
    url: url,
    method: POST, 
    success: function(res){

    }
  });

  function onSaveSuccess (response) {
    console.debug('BOOM', response);
  }

  function onSaveFailure (err) {
    console.error(err.responseJSON);
  }

  request.done(onSaveSuccess);
  request.fail(onSaveFailure);
}

$('.js-submit').on('click', onSubmit);


function fetchCharacters () {
  var request = $.get('https://ironhack-characters.herokuapp.com/characters');

  function handleCharacters (characters) {
    // what is the response from the get request?
    // write a function to process the response
    // it should loop through each character in the response
    // create the DOM element with HTML to describe each character
    // append to the list $('.js-character-list')
  }

  function handleError (err1, err2, err3) {
    console.error('OH NO!!', err1, err2, err3);
  }

  request.done(handleCharacters);
  request.fail(handleError);
}

$('.js-characters').on('click', fetchCharacters);
