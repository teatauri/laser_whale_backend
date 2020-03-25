class ScoresController < ApplicationController

    def highscores
        scores = Score.highscores
        render json: scores.map {|s| {score: s.number, player: s.player.name}}
    end

    def create
        score = Score.create(score_params)
        render json: score
    end

    private

    def score_params
        params.require(:score).permit(:number, :player_name)
    end
end
