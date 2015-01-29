class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.integer :phone
      t.date :dob

      t.timestamps
    end
  end
end
