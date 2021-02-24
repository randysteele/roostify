class Earning < ApplicationRecord

    def calculate_taxes  
        bracket_one = puts "congrats you are tax free"
        if @earnings < 9999 
           "#{first_bracket}"
        #   byebug
        else puts "Oh no, you have to pay taxes"
        end
    end

    def first_bracket 
        @earnings.to_i * 0.10

    end
end
