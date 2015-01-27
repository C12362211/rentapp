class CreateDevs < ActiveRecord::Migration
  def change
    create_table :devs do |t|
      t.string :name
      t.string :country

      t.timestamps
    end
  end
end
