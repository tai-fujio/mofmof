class ChangeColumnNullToStations < ActiveRecord::Migration[5.0]
  def change
    change_column_null :stations, :station_line, null: false
    change_column :stations, :station_line, :string, default: "不明"
    change_column_null :stations, :station_name, null: false
    change_column :stations, :station_name, :string, default: "不明"
    change_column_null :stations, :walk_from, null: false
    change_column :stations, :walk_from, :integer, default: "不明"
  end
end
