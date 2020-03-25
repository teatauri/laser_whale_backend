# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@player = Player.create(name: "Lili")

# Score.create(number: 10, player_id: 1)

# @player.scores.create(number: 10)
@score = Score.create(number: 10, player_id: @player.id)