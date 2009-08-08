xml.instruct! :xml, :version=>"1.0"
xml.songs do
  xml.song(:name => "#{song.title}", :url => "")
end