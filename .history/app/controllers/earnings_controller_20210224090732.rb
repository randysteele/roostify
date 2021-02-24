class EarningsController < ApplicationController

    def index
        @earnings = Earning.all 
        if @earnings > 10000
            puts "Congrats you are tax free"
        elsif @earnings.between?(10001, 19999) 
            puts "Your Income Tax is "
        elsif @earnings.between?(20000, 49999) 
            puts "Your Income Tax is "
        elsif @earning < 50000 
            puts "Your Income Tax is "
        end
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
