class Earning < ApplicationRecord

    def calculate_taxes 
        @earnings = Earning.all    
          @earnings.map do |e|
             e.amount                                           
            if e.amount < 9999
            puts "Congrats, you dont have any taxes to pay" 
            elsif e.amount.between(9999, 19999)
               return  bracket_one              
            elsif e.amount > 19999 && e.amount < 50000
               return  bracket_two
            else e.amount > 50000 
               return  e.amount * 0.30                     
            end                              
          end
    end

   def bracket_one 
    @earnings = Earning.all 
     @earnings * 0.10 
   end

   def bracket_two
    @earnings = Earning.all 
     @earnings * 0.20
   end

#    def bracket_three
#     @earnings = Earning.all 
#      @earnings * 0.30
#    end



end
