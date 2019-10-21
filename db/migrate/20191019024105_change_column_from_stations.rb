class ChangeColumnFromStations < ActiveRecord::Migration[5.0]
  def change
    add_reference :stations, :real_estate, foreign_key: true
  end
end
