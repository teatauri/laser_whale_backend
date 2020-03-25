class Score < ApplicationRecord
  belongs_to :player

  attr_accessor :number

  @@all = []

  def initialize(number)
    @number = number
    @@all << self
  end

  def self.all
    @@all
  end

  def self.highscores

    # @@all.sort_by(&:number)
    return @@all

  end
  

end

