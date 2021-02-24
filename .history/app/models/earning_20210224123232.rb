class Earning < ApplicationRecord

    def calculate_taxes 
        # @earnings = Earning.all    
          @earnings.each do |e|
            e.amount
            if e.amount > 9999
                puts "Congrats, you dont have any taxes to pay" 
            elsif e.amount.between?(10000, 19999)
                e.amount * 0.10 
                    elsif e.amount.between?(20000, 49999)
                        e.amount * 0.20
                        elsif e.amount < 50000 
                            e.amount * 0.30
                end
          end

     #   end
    end

    # def first_bracket 
    #     @earnings.to_i * 0.10
    #     byebug
    # end
end
