class CreateFanPhotos < ActiveRecord::Migration
  def self.up
    create_table :fan_photos do |t|
      t.string :title
      t.string :description
      t.integer :fan_photo_album_id
      t.string :permalink

      t.timestamps
    end
  end

  def self.down
    drop_table :fan_photos
  end
end
