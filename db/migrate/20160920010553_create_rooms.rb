class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :number

      t.timestamps null: false
    end
  end
end
