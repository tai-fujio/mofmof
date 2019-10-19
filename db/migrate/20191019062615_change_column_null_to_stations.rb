class ChangeColumnNullToStations < ActiveRecord::Migration[5.0]
  def up
    change_column_null :stations, :station_line, false,0
    change_column_null :stations, :station_name, false,0
    change_column_null :stations, :walk_from, false,0
  end
  def down
    change_column_null :stations, :station_line, true,nil
    change_column_null :stations, :station_name, true,nil
    change_column_null :stations, :walk_from, true,nil
  end
end
