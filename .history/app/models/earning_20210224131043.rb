class Earning < ApplicationRecord

    def calculate_taxes 
        @earnings = Earning.all    
          @earnings.each do |e|
            e.amount
            if e.amount > 9999
            puts "Congrats, you dont have any taxes to pay" 
            elsif e.amount < 9999 || e.amount > 19999
              puts  e.amount * 0.10 
            elsif e.amount < 19999 || e.amount > 50000
               puts e.amount * 0.20
            elsif e.amount < 50000 
               puts e.amount * 0.30 
               byebug        
            end      
                  
          end
    end
end
