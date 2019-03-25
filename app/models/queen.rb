class Queen < ApplicationRecord
  has_many :team_queens
  has_many :teams, through: :team_queens

 @queens = []

 def self.get_queens_from_season
   response_string = RestClient.get("http://www.nokeynoshade.party/api/queens/all")
   response_hash = JSON.parse(response_string)
   response_hash.each do |key| key["name"]
   @queens << key["name"]
  end
  @queens.each do |queen|
    queen = Queen.find_or_create_by(name: queen)
  end
end



end
