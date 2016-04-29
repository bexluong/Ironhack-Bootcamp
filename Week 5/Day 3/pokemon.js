$(function () {
  var url = 'https://ironhack-characters.herokuapp.com/characters';
  $.ajax({
    url: url,
    success: function(res){
      console.log('responde delivered');
      var imageUrl = res.sprites.front_default;
      var imgTag = $('<img>').attr('src', imageUrl);
      $('.container').append(imgTag);
    }
  });

});
