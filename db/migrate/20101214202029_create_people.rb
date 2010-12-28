class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :name
      t.string :image
      t.string :email
      t.string :url
      t.string :affiliation
      t.string :role
      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
