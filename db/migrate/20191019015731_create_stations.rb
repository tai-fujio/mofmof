class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :station_line,   
      t.string :station_name,   
      t.integer :walk_from, 
      t.references :real_estates, foreign_key: true

      t.timestamps
    end
  end
end
