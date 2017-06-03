var addSong = document.getElementByClass("add-song");

addSong.onclick = function(){
  <%= render 'songs/new', artist: @artist, song: @artist.songs.new %>
}
