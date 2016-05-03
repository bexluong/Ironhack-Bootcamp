$(function() {

  var Artists = function() {
    this.addListeners = function () {
      $('form').on('submit', function(e) {
        e.preventDefault();
        artiste.fetchArtists();
        debugger
      });
    }
  };

  Artists.prototype.fetchArtists = function() {
    var that = this;
    console.log('hola');
    $.ajax({
      url: 'https://api.spotify.com/v1/search?type=artist&query=' + $('#artist').val(),
      success: function(result) {
        that.render(result);
      }
    });
  };

  Artists.prototype.render = function(result) {
    $('.js-artList').empty();
    for (i = 0; i < 5; i++) {
      var imgUrl = result.artists.items[i].images[0].url;
      var imgTag = $('<img>').attr('src', imgUrl);
      imgTag.attr('#artistLink');
      $('.js-artList').append('<p>' + result.artists.items[i].name + '</p>');
      $('.js-artList').append(imgTag);
    }
  };
 //
 //  Artists.prototype.getAlbums = function (id){
 //    $('document').on('click','#artistLink', function(e) {
 //      alert("clicked");
 //   });
 //
 // };



var artiste = new Artists();
artiste.addListeners();

});
