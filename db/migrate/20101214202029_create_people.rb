class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :name
      t.string :title
      t.string :office
      t.string :email
      t.string :phone
      t.string :blurb
      t.string :image
      t.string :image2
      t.string :url
      t.string :position
      t.string :institution
      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
