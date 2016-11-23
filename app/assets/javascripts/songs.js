function createSong(title, artistId) {
  $.ajax({
    type: "POST",
    url: "/artists/" + artistId + "/songs.json",
    data: JSON.stringify({
      song: { title: title }
    }),

    contentType: "application/json",
    dataType: "json"})

    .success(function(data) {
      var listItem = $('<li></li>').html(data.song.title);
      $("#songs").append( listItem );
      $("#song-name").val(null);
      $("#notice").html(data.message);
    })

    .fail(function(error) {
      errors = JSON.parse(error.responseText).error

      $.each(errors, function(index, value) {
        var listItem = $('<li></li>').html(value);
        $("#errors").append(listItem);
      });
    });
}

function submitSong(event) {
  event.preventDefault();

  var title = $("#song-name").val();
  var artistId = $("#song-name").data("artist-id");

  createSong(title, artistId);
}

$(document).on('turbolinks:load', function() {
  $("form").bind('submit', submitSong);
});
