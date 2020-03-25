class Score < ApplicationRecord
  belongs_to :player

  def self.highscores
    self.all.sort_by(&:number).reverse.take(10)
  end

  def player_name=(name)
    self.player = Player.find_or_create_by(name: name)
  end
  

end

