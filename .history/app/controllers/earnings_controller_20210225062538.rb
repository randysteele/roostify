class EarningsController < ApplicationController

    def index
        @earnings = Earning.all        
    end

    def new 
        @earnings = Earning.new
        @last = Earning.last 
    end    

    def create 
        @earning = Earning.create(earning_params) 
        if @earning.save 
           redirect_to earnings_path 
        end
    end
    
private 

def earning_params
    params.require(:earning).permit(:amount)
end

end
