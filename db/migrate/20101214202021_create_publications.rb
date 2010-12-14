class CreatePublications < ActiveRecord::Migration
  def self.up
    create_table :publications do |t|
      t.string :authors
      t.integer :year
      t.string :title
      t.string :journal
      t.string :file
      t.timestamps
    end
  end

  def self.down
    drop_table :publications
  end
end
