class AddColumnsToShows < ActiveRecord::Migration
  def self.up
    add_column :shows, :venue, :string
    add_column :shows, :address, :string
    add_column :shows, :date, :datetime
    add_column :shows, :ticket_price, :string
    add_column :shows, :other_bands, :string
  end

  def self.down
    remove_column :shows, :other_bands
    remove_column :shows, :ticket_price
    remove_column :shows, :date
    remove_column :shows, :address
    remove_column :shows, :venue
  end
end
