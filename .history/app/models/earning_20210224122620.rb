class Earning < ApplicationRecord

    def calculate_taxes  
         @earnings.to_i.between?(0,9999)  
          @earnings.to_i * 0.10
          @earnings.to_i.each do |e|
            e.amount
          end
          
     #   end
    end

    # def first_bracket 
    #     @earnings.to_i * 0.10
    #     byebug
    # end
end
