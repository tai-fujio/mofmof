class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :station_line, null: false,default: "-"
      t.string :station_name, null: false,default: "-"
      t.integer :walk_from, null: false,default: 0
      t.references :real_estates, foreign_key: true

      t.timestamps
    end
  end
end
