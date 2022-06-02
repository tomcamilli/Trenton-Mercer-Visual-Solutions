class CrimesController < ApplicationController
    def index
        @crimes = Crime.all
        @murders = Crimes.where({typeOfOffense: "Number of Offenses"}).select(:murder)
        @rapes = Crimes.where({typeOfOffense: "Number of Offenses"}).select(:rape)
        @assaults = Crimes.where({typeOfOffense: "Number of Offenses"}).select(:assault)
    end
end
