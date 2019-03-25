class Team < ApplicationRecord
  has_many :team_queens
  has_many :queens, through: :team_queens
  has_one :fan
end
