class Player < ApplicationRecord
    has_many :player_scores
    has_many :scores, through: :player_score
end
