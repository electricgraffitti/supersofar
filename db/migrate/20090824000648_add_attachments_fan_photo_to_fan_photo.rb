class AddAttachmentsFanPhotoToFanPhoto < ActiveRecord::Migration
  def self.up
    add_column :fan_photos, :fan_photo_file_name, :string
    add_column :fan_photos, :fan_photo_content_type, :string
    add_column :fan_photos, :fan_photo_file_size, :integer
    add_column :fan_photos, :fan_photo_updated_at, :datetime
  end

  def self.down
    remove_column :fan_photos, :fan_photo_file_name
    remove_column :fan_photos, :fan_photo_content_type
    remove_column :fan_photos, :fan_photo_file_size
    remove_column :fan_photos, :fan_photo_updated_at
  end
end
