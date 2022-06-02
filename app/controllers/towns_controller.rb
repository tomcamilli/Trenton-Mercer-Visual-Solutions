class TownsController < ApplicationController
    def index
        @townNames = Town.first#(:townNames)/first
    end

    def show

    end
end
