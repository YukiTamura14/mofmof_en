class ChangeFeatureColumnsOnRooms < ActiveRecord::Migration[5.0]
  def change
    change_column :rooms, :feature, :text, default: " ", limit: 255
  end
end
