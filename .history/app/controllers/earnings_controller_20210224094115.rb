class EarningsController < ApplicationController

    def index
        @earnings = Earning.all 
    end

    def new 
        @earnings = Earning.new
        if '@earnings > 10000'
            puts "Congrats you are tax free"
        elsif @earnings.between?(10001, 19999) 
            puts "Your Income Tax is "
        elsif @earnings.between?(20000, 49999) 
            puts "Your Income Tax is "
        elsif @earning < 50000 
            puts "Your Income Tax is "
        end
       
    end    

    def create 
        @earning = Earning.build(earning_params) 
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
