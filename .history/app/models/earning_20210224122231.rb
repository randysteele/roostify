class Earning < ApplicationRecord

    def calculate_taxes  
         @earnings.to_i.between?(0,9999)  
          @earnings.to_i + 0.10
        end
    end

    # def first_bracket 
    #     @earnings.to_i * 0.10
    #     byebug
    # end
end
