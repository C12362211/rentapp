class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.integer :customer_id
      t.integer :game_id
      t.date :date_rented
      t.date :date_due

      t.timestamps
    end
  end
end
