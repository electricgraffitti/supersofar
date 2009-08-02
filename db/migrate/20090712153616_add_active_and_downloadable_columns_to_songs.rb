class AddActiveAndDownloadableColumnsToSongs < ActiveRecord::Migration
  def self.up
    add_column :songs, :active, :boolean
    add_column :songs, :downloadable, :boolean
  end

  def self.down
    remove_column :songs, :downloadable
    remove_column :songs, :active
  end
end
