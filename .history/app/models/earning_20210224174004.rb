class Earning < ApplicationRecord

    def calculate_taxes 
        @earnings = Earning.all    
          @earnings.map do |e|
            bracket =  e.amount                                           
            if e.amount < 9999
            puts "Congrats, you dont have any taxes to pay" 
            elsif e.amount > 9999 && e.amount < 19999
               return  bracket_one              
            elsif e.amount > 19999 && e.amount < 50000
               return  bracket_two
            else e.amount > 50000 
               return  e.amount * 0.30                     
            end                              
          end
    end

   def bracket_one 
     @earnings * 0.10 
   end

   def bracket_two
    @earnings * 0.20
   end

   def bracket_three
    @earnings * 0.30
   end



end
