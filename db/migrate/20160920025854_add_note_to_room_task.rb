class AddNoteToRoomTask < ActiveRecord::Migration
  def change
    add_column :room_tasks, :note, :text
  end
end
