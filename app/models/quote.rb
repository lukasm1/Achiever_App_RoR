class Quote < ApplicationRecord
  belongs_to :achiever
  belongs_to :user

  has_many :favorites, as: :likeable, through: :favorites

  validates :text, :achiever_id, presence: true

end
