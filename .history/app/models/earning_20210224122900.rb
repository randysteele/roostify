class Earning < ApplicationRecord

    def calculate_taxes 
        @earnings = Earning.all    
          @earnings.each do |e|
            e.amount
            if e.amount > 9999
                e.amount * 0.10 
                else e.amount.between?(10000, 19999)
                    e.amount * 0.20
                end
          end

     #   end
    end

    # def first_bracket 
    #     @earnings.to_i * 0.10
    #     byebug
    # end
end
