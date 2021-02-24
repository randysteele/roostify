class EarningsController < ApplicationController

    def index
        @earnings = Earning.all 
    end

    def new 
        @earning = Earning.new
    end

    def edit 
        @earnings = Earning.find_by[:id]
    end

    def update 
        @earnings = Earning.find_by[:id]
    end
    

end
