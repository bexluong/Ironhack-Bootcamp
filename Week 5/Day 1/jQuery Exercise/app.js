var phrases = [
  'following instructions is overrated.',
  'Crows before hoes.',
  'I don\'t wanna be Obama self',
  'Roses, are red, my name is not Dave, this doesn\'t make any sense, Microwave.'
];

function randomPhrases() {
  var randomPhrase = phrases[Math.floor(Math.random() * phrases.length)];
  $('.container').text(randomPhrase);
}

$('.refresh').on('click', randomPhrases);

$('form').on('submit', function () {
  phrases.push($("#newPhrase").val());
});


  phrases.forEach(function (p){
    $('.showYoPhraseHideYoPhrase').append('<li>'+p+'</li>');
  });
