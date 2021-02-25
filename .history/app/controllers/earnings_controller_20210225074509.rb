class EarningsController < ApplicationController

    def index
        @earnings = Earning.all        
    end

    def new 
        @earnings = Earning.new
        @last = Earning.last 
    end    

    def create 
        @earnings = Earning.create(earning_params) 
        if @earnings.save 
           render :new 
        end
    end
    
private 

def earning_params
    params.require(:earning).permit(:amount)
end

end
