class AddTrackColumnToSongs < ActiveRecord::Migration
  def self.up
    add_column :songs, :track_number, :string
  end

  def self.down
    remove_column :songs, :track_number
  end
end
