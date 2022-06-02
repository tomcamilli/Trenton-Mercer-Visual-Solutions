class SchoolPopulationsController < ApplicationController
    def index
        @school_populations = SchoolPopulation.select(:total)
    end
end