class Earning < ApplicationRecord

    def calculate_taxes 
        if @earnings < 10000 
            puts "congrats you are tax free"
        else puts "Oh no, you have to pay taxes"
        end
    end


end
