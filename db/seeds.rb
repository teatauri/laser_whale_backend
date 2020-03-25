# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Score.destroy_all
Player.destroy_all

players = Player.create([
    {name: "Lili"},
    {name: "Sam"},
    {name: "Lee"},
    {name: "Gabe"},
    {name: "Joe"},
    {name: "Dan"}
])

# Score.create(number: 10, player_id: 1)

# @player.scores.create(number: 10)
def random_score
    (5..50).to_a.sample
end

50.times do 
    Score.create(number: random_score, player: players.sample)
end