class ChangeAuthenticationColumnsOnRooms < ActiveRecord::Migration[5.0]
  def change
    change_column :rooms, :room_name, :string, null: false, limit: 255
    change_column :rooms, :price, :string, null: false, limit: 10000
    change_column :rooms, :adress, :string, null: false, limit: 255
    change_column :rooms, :built_years, :integer, null: false, limit: 4
    change_column :stations, :station_name, :string, null: false, limit: 255
    change_column :stations, :line_to_station, :string, null: false, limit: 50
    change_column :stations, :minutes_on_foot, :string, null: false, limit: 3
  end
end
