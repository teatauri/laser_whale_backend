class PlayerScore < ApplicationRecord
  belongs_to :player
  belongs_to :score
end
