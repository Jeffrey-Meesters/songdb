function createSong(title, album, year, artistId) {
  $.ajax({
    type: "POST",
    url: "/artists/" + artistId + "/songs.json"
    data: JSON.stringify({
      song: { title: title, album: album, year: year}
    }),

    contentType: "application/json",
    dataType: "json" })

    .success(function(data) {
      var listItem = $('<li></li>').html(data.song.name);
      $("#songs").append(listItem);
      $("#song-name").val(null);
      $("#notice").html(data.message);
    })

    .fail(function(error) {
      errors = JSON.parse(error.responseText).error

      $.each(errors, function(index, value){
        var listItem = $('<li></li>').html(value);
        $("#errors").append(listItem);
      });
    });
}

function submitSing(event) {
  event.preventDefault();

  var title = $("#song-name").val();
  var artistId = $("#song-name").date("artist-id");

  createSong(title, artistId);
}

$(document).ready(function() {
  $("form").bind('submit', submitSong);
});
