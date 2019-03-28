class Queen < ApplicationRecord
  has_many :team_queens
  has_many :teams, through: :team_queens
  has_many :queen_stats 

 @queens = {}


 def self.get_queens_from_season
   response_string = RestClient.get("http://www.nokeynoshade.party/api/queens/all")
   response_hash = JSON.parse(response_string)
   response_hash.each do |queen|
   Queen.find_or_create_by(name: queen["name"], image_url: queen["image_url"], quote: queen["quote"])
  end
 end
end
