class Queen < ApplicationRecord
  has_many :team_queens
  has_many :teams, through: :team_queens
  has_many :queen_stats


  def self.get_queens_from_one_season
    response_string = RestClient.get("http://www.nokeynoshade.party/api/seasons/11/queens")
    response_hash = JSON.parse(response_string)
    response_hash.each do |queen|
     Queen.find_or_create_by(name: queen["name"], image_url: queen["image_url"], quote: queen["quote"])
    end
  end

  def total_score
    queen_total = 0
    self.queen_stats.each do |challenge|
      if challenge
        queen_total += challenge.win_mini_challenge + challenge.win_maxi_challenge + challenge.safe_or_survives + challenge.placed_in_top + challenge.placed_in_bottom + challenge.wins_lipsync + challenge.loses_lipsync + challenge.eliminated + challenge.takes_the_crown
      end
    end
    queen_total
  end

  def team_total
    
  end


end
