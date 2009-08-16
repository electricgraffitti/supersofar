class CreateFanSessions < ActiveRecord::Migration
  def self.up
    create_table :fan_sessions do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :fan_sessions
  end
end
