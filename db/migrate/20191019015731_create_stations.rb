class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :station_line,    null: false
      t.string :station_name,    null: false
      t.integer :walk_from,    null: false
      t.references :real_estates, foreign_key: true

      t.timestamps
    end
  end
end
