class Team < ApplicationRecord
  has_many :team_queens
  has_many :queens, through: :team_queens
  belongs_to :fan

  def queen

  end
end
