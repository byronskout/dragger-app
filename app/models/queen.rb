class Queen < ApplicationRecord
  has_many :team_queens
  has_many :teams, through: :team_queens
end
