xml.instruct! :xml, :version=>"1.0"
xml.featureset do
 @albums.each do |album|
 xml.album(:name => "#{album.title}", :author => "Supersofar", :imageUrl => "#{album.cover.url(:small)}", :link => "#{album.itunes_url}") do
  album.songs.each do |song|
    xml.song(("songs/" + song.id.to_s + "/original_" + song.song_file_name), :name => "#{song.title}", :duration => "3 : 31", :buy => "#{song.buy}", :download => "#{song.downloadable}", :buyLink => "#{song.itunes_link}", :downloadSource => "#{'songs/' + song.id.to_s + '/original_' + song.song_file_name}")
   end
  end
 end
end