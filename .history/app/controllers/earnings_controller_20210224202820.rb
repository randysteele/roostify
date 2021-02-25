class EarningsController < ApplicationController

    # def index
    #     @earnings = Earning.all
    #    return  @earnings
    # end

    def new 
        @earnings = Earning.new
        @all = Earning.all 
    end    

    def create 
        @earning = Earning.create(amount)  
        end
    end
    

    def edit 
        @earnings = Earning.find_by[:id]
    end

    def update 
        @earnings = Earning.find_by[:id]
    end
private 


end
