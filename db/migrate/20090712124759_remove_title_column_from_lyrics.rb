class RemoveTitleColumnFromLyrics < ActiveRecord::Migration
  def self.up
    
    remove_column :lyrics, :title
    
  end

  def self.down
    
    add_column :lyrics, :title, :string
    
  end
end
