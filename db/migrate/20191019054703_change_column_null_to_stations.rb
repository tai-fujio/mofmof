class ChangeColumnNullToStations < ActiveRecord::Migration[5.0]
  def up
    change_column_null :stations, :station_line, null: true
    change_column_null :stations, :station_name, null: true
    change_column_null :stations, :walk_from, null: true
  end

  def down
    change_column_null :stations, :station_line, null: false
    change_column_null :stations, :station_name, null: false
    change_column_null :stations, :walk_from, null: false
  end
end
