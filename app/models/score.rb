class Score < ApplicationRecord
    has_many :player_scores
    has_many :player, through: :player_score
end
