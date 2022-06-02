class LitStatsController < ApplicationController
    def index
        @lit_scores = LitStat.select(:validScores)
    end
end