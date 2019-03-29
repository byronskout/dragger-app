class Fan < ApplicationRecord


  has_one :team

  validates :name, uniqueness: true
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :email, presence: true

  has_secure_password

  def team_total
   if self.team
     team_total_arr = []
     self.team.queens.each do |queen|
       team_total_arr << queen.total_score
     end
     return team_total_arr.sum
   else
     return 0
   end
 end

end
