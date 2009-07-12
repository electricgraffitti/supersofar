class AddPermalinkColumnToPhotoAlbums < ActiveRecord::Migration
  def self.up
    add_column :photo_albums, :permalink, :string
  end

  def self.down
    remove_column :photo_albums, :permalink
  end
end
