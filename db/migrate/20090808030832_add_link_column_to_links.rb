class AddLinkColumnToLinks < ActiveRecord::Migration
  def self.up
    add_column :links, :link, :string
  end

  def self.down
    remove_column :links, :link
  end
end
