class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  belongs_to :role
  has_many :room_tasks
  has_many :tasks, through: :room_tasks, autosave: true
  has_many :rooms, through: :room_tasks, autosave: true

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true
end
