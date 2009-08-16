class CreateFans < ActiveRecord::Migration
  def self.up
    create_table :fans do |t|
      t.string :email
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token

      t.timestamps
    end
  end

  def self.down
    drop_table :fans
  end
end
