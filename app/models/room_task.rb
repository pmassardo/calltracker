class RoomTask < ActiveRecord::Base
  belongs_to :user
  belongs_to :task
  belongs_to :room
end
