class AddIndexesToApp < ActiveRecord::Migration
  def self.up
    
    add_index :fan_photo_albums, :fan_id
    add_index :fan_photos, :fan_photo_album_id
    add_index :fan_statuses, :fan_id
    add_index :links, :link_type_id
    add_index :lyrics, :song_id
    add_index :photos, :photo_album_id
    add_index :profiles, :fan_id
    add_index :profiles, :state_id
    add_index :songs, :album_id
    
  end

  def self.down
    
    remove_index :fan_photo_albums, :fan_id
    remove_index :fan_photos, :fan_photo_album_id
    remove_index :fan_statuses, :fan_id
    remove_index :links, :link_type_id
    remove_index :lyrics, :song_id
    remove_index :photos, :photo_album_id
    remove_index :profiles, :fan_id
    remove_index :profiles, :state_id
    remove_index :songs, :album_id
    
  end
end
