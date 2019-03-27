class Fan < ApplicationRecord


  has_one :team

  validates :name, uniqueness: true
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :email, presence: true

  has_secure_password
end
