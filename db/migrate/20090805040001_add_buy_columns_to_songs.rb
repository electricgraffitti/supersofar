class AddBuyColumnsToSongs < ActiveRecord::Migration
  def self.up
    add_column :songs, :buy, :boolean
    add_column :songs, :itunes_link, :string
    add_column :songs, :cd_baby_link, :string
    add_column :songs, :rhapsody_link, :string
    add_column :songs, :amazon_link, :string
  end

  def self.down
    remove_column :songs, :amazon_link
    remove_column :songs, :rhapsody_link
    remove_column :songs, :cd_baby_link
    remove_column :songs, :itunes_link
    remove_column :songs, :buy
  end
end
