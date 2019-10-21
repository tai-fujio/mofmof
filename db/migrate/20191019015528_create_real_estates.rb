class CreateRealEstates < ActiveRecord::Migration[5.0]
  def change
    create_table :real_estates do |t|
      t.string :room_name, null: false
      t.integer :room_rent, null: false
      t.string :room_address, null: false
      t.integer :room_age, null: false
      t.text :room_remarks

      t.timestamps
    end
  end
end
