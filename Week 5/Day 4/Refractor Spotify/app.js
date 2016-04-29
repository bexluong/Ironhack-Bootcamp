

  $('form').on('submit', function(e) {
  e.preventDefault();
  var url = 'https://api.spotify.com/v1/search?type=artist&query=' + $('#artist').val();
  });
  });
  });

  $(function() {

        var Artists = function() {
          this.url = 'https://api.spotify.com/v1/search?type=artist&query=' + $('#artist').val();
        };
        Artists.prototype.fetchArtists = function() {
            $.ajax({
              url: url,
              success: function(result) {
                $('.js-artList').empty();
              }

                Artists.prototype.render = function() {
                for (i = 0; i < 5; i++) {
                  var imgUrl = result.artists.items[i].images[0].url;
                  var imgTag = $('<img>').attr('src', imgUrl);
                  imgTag.attr('id', result.artists.items[i].id);

                  $('.js-artList').append('<p>' + result.artists.items[i].name + '</p>');
                  $('.js-artList').append(imgTag);
                }
              }
            });
          }
        }
