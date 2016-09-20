class Task < ActiveRecord::Base

  has_many :room_tasks
  has_many :users, through: :room_tasks, autosave: true
  has_many :rooms, through: :room_tasks, autosave: true

end
