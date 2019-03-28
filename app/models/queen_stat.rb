class QueenStat < ApplicationRecord
  belongs_to :queen

  # def total_score
  #   total_score = win_maxi_challenge + win_mini_challenge + safe_or_survives + placed_in_top + placed_in_bottom + wins_lipsync + loses_lipsync + eliminated + takes_the_crown
  # end

end
