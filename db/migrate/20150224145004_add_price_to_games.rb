class AddPriceToGames < ActiveRecord::Migration
  def change
    add_column :games, :price, :decimal

  end
end
