class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :picture
      t.string :genre
      t.integer :rating
      t.integer :dev_id

      t.timestamps
    end
  end
end
