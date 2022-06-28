class Activated < ApplicationRecord
  validates :user_id, uniqueness: { scope: :habit_id }
  belongs_to :user
  belongs_to :habit
end
