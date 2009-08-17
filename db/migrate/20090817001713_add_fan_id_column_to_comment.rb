class AddFanIdColumnToComment < ActiveRecord::Migration
  def self.up
    add_column :comments, :fan_id, :integer
  end

  def self.down
    remove_column :comments, :fan_id
  end
end
