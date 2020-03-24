class CreatePlayerScores < ActiveRecord::Migration[6.0]
  def change
    create_table :player_scores do |t|
      t.references :player, null: false, foreign_key: true
      t.references :score, null: false, foreign_key: true

      t.timestamps
    end
  end
end
