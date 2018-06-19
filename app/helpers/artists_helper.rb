module ArtistsHelper
  def display_artist(song, artist = song.artist)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end
end
