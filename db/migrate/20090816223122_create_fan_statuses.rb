class CreateFanStatuses < ActiveRecord::Migration
  def self.up
    create_table :fan_statuses do |t|
      t.text :status_description

      t.timestamps
    end
  end

  def self.down
    drop_table :fan_statuses
  end
end
