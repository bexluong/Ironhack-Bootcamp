var container = $('.container');
var cells = [];

for (var i = 0; i < 100; i++) {
  var cell = $('<div>').addClass('cell').attr('id',i);
  cells.push(cell);
  container.append(cell);
}

//
// function randomColour() {
//   cells.forEach(function(cell) {
//     var randomNum = Math.random();
//     if (randomNum > 0.5) {
//       cell.toggleClass('active');
//     }
//   });
// }
//
// setInterval(randomColour, 1000);


// DAY TWO ADD ON

  cells.forEach(function (cell) {
    cell.on('click', function(event) {
      $(event.currentTarget).toggleClass('active');

  });
});
