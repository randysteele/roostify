class Earning < ApplicationRecord

    def calculate_taxes 
        if @earnings < 10000 
            puts "congrats you are tax free"
    end

end
