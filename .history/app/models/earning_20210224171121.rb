class Earning < ApplicationRecord

    def calculate_taxes 
        @earnings = Earning.all    
          @earnings.each do |e|
            bracket =  e.amount             
                              
            if e.amount < 9999
            puts "Congrats, you dont have any taxes to pay" 
            elsif e.amount > 9999 && e.amount < 19999
                 e.amount * 0.10                
            elsif e.amount > 19999 && e.amount < 50000
                 e.amount * 0.20
            else e.amount > 50000 
                 e.amount * 0.30                     
            end   
                              
          end
    end
end
