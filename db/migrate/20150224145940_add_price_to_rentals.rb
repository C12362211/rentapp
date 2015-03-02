class AddPriceToRentals < ActiveRecord::Migration
  def change
    add_column :rentals, :game_price, :decimal

  end
end
