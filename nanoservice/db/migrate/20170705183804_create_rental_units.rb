class CreateRentalUnits < ActiveRecord::Migration[5.1]
  def change
    create_table :rental_units do |t|
      t.string :address
      t.integer :rooms
      t.integer :bathrooms
      t.integer :price_cents

      t.timestamps
    end
  end
end
