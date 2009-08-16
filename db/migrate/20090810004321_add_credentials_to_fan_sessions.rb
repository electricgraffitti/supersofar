class AddCredentialsToFanSessions < ActiveRecord::Migration
  def self.up
    add_column :fan_sessions, :email, :string
    add_column :fan_sessions, :password, :string
  end

  def self.down
    remove_column :fan_sessions, :password
    remove_column :fan_sessions, :email
  end
end
