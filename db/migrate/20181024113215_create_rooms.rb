class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.string :price
      t.string :adress
      t.integer :built_years
      t.text :feature

      t.timestamps
    end
  end
end
