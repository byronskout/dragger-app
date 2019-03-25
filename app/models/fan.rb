class Fan < ApplicationRecord
  has_one :team

  validates :name, uniqueness: true
  validates :name, presence: true

end
