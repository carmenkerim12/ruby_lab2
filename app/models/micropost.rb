class Micropost < ApplicationRecord
  #Validations
  validates :message, presence: true

  #Relationship
  belongs_to :user
end
