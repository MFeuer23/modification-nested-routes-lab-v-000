module SongsHelper
  def artist_select(song, id)
    if song.artist.nil?
      select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
    else
      hidden_field_tag "song[artist_id]", song.artist_id
    end
  end
  
  
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", new_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end
end
