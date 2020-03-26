class Score < ApplicationRecord
  belongs_to :player

  def self.all_by_score
    self.all.sort_by(&:number).reverse
  end

  def self.highscores
    self.all_by_score.take(10)
  end

  def player_name=(name)
    self.player = Player.find_or_create_by(name: name)
  end
  
  def position
    "#{Score.all_by_score.index(self) + 1}/#{Score.all.size}"
  end

end

