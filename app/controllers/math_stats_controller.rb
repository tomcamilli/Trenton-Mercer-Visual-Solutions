class MathStatsController < ApplicationController
    def index
        @math_scores = MathStat.select(:validScores)
    end
end