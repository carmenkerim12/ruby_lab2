class User < ApplicationRecord
  #Validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

  #Relationships
  has_many :microposts
end
