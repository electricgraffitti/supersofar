class AddSellerColumnsToAlbums < ActiveRecord::Migration
  def self.up
    add_column :albums, :itunes_url, :string
    add_column :albums, :cd_baby_url, :string
    add_column :albums, :rhapsody_url, :string
    add_column :albums, :amazon_url, :string
  end

  def self.down
    remove_column :albums, :amazon_url
    remove_column :albums, :rhapsody_url
    remove_column :albums, :cd_baby_url
    remove_column :albums, :itunes_url
  end
end
