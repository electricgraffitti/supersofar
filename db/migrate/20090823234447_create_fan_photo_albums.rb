class CreateFanPhotoAlbums < ActiveRecord::Migration
  def self.up
    create_table :fan_photo_albums do |t|
      t.integer :fan_id
      t.string :name
      t.boolean :private_album

      t.timestamps
    end
  end

  def self.down
    drop_table :fan_photo_albums
  end
end
