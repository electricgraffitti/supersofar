class AddFanIdColumnToFanStatuses < ActiveRecord::Migration
  def self.up
    add_column :fan_statuses, :fan_id, :integer
  end

  def self.down
    remove_column :fan_statuses, :fan_id
  end
end
