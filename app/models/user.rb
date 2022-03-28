class User < ApplicationRecord
  has_many :user_animals

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :username, presence: true
end
