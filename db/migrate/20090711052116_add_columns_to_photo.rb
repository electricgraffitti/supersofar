class AddColumnsToPhoto < ActiveRecord::Migration
  def self.up
    add_column :photos, :permalink, :string
    add_column :photos, :author, :string
  end

  def self.down
    remove_column :photos, :author
    remove_column :photos, :permalink
  end
end
