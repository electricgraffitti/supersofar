class CreateLyrics < ActiveRecord::Migration
  def self.up
    create_table :lyrics do |t|
      t.string :title
      t.text :description
      t.string :permalink
      t.integer :song_id

      t.timestamps
    end
  end

  def self.down
    drop_table :lyrics
  end
end
