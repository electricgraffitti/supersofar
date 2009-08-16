class RemoveStateColumnFromProfiles < ActiveRecord::Migration
  def self.up
    
    remove_column :profiles, :state
    add_column :profiles, :state_id, :integer
  end

  def self.down
    remove_column :profiles, :state_id
    add_column :profiles, :state, :string
  end
end
