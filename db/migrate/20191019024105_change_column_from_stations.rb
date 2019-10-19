class ChangeColumnFromStations < ActiveRecord::Migration[5.0]
  def change
    remove_column :stations, :real_estates_id
    add_reference :stations, :real_estate, foreign_key: true
  end
end
