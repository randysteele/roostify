class EarningsController < ApplicationController

    def index
        @earnings = Earning.all 
    end

    def new 
        @earnings = Earning.new
        if @earnings.to_i > 10000
            puts "Congrats you are tax free"
        elsif @earnings.to_i.between?(10001, 19999) 
            puts "Your Income Tax is "
        elsif @earnings.to_i.between?(20000, 49999) 
            puts "Your Income Tax is "
        elsif @earning.to_i < 50000 
            puts "Your Income Tax is "
        end
       
    end    

    def create 
        @earning = Earning.create(earning_params) 
        if @earning.save 
           redirect_to earnings_path 
        end
    end
    

    def edit 
        @earnings = Earning.find_by[:id]
    end

    def update 
        @earnings = Earning.find_by[:id]
    end
private 

def earning_params
    params.require(:earning).permit(:amount, :tax)
end

end
