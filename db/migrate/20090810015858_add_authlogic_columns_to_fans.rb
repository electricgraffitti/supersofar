class AddAuthlogicColumnsToFans < ActiveRecord::Migration
  def self.up
    add_column :fans, :last_login_at, :datetime
  end

  def self.down
    remove_column :fans, :last_login_at
  end
end
