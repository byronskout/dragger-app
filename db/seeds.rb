# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

q1 = Queen.create(name: "Farah Moan", id: 1)
q2 = Queen.create(name: "Latrice Royale", id: 2)
q3 = Queen.create(name: "Trinity Taylor", id: 3)
q4 = Queen.create(name: "Jasmine Masters", id: 4)

t1 = Team.create(team_name: "Thrustin More", id: 1)
t2 = Team.create(team_name: "Tag Team", id: 2)
t3 = Team.create(team_name: "Sassay Away", id: 3)

tq1 = TeamQueen.create(team_id: 1, queen_id: 2)
tq2 = TeamQueen.create(team_id: 1, queen_id: 3)
tq3 = TeamQueen.create(team_id: 2, queen_id: 1)
tq4 = TeamQueen.create(team_id: 2, queen_id: 4)

f1 = Fan.create(name: "Charlotte")
f2 = Fan.create(name: "Byron")
