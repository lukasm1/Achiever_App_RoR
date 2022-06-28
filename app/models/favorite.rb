class Favorite < ApplicationRecord
  # validate at the model level, that the user_id is unique as long as we have 
  # the same quote_id:
  validates :user_id, uniqueness: { scope: [:likeable_id, :likeable_type] }

  belongs_to :user
  belongs_to :likeable, polymorphic: true


end
