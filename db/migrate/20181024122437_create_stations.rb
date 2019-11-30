class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :station_name
      t.string :line_to_station
      t.string :minutes_on_foot

      t.timestamps
    end
  end
end
