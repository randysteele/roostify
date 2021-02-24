class Earning < ApplicationRecord

    def calculate_taxes 
        @earnings = Earning.all  
        @tax = []   
          @earnings.each do |e|
            e.amount
            case when e.amount < 9999
            puts "Congrats, you dont have any taxes to pay" 
         #   when e.amount > 9999 || e.amount < 19999
            when e.amount (0..9999)
               return "#{e.amount}" * 0.10 
         #   when e.amount > 19999 || e.amount < 50000
            when e.amount 10000..19999
                return "#{e.amount}" * 0.20
            when e.amount > 50000 
                 return "#{e.amount}" * 0.30 
            #    byebug        
            end      
                 
          end
    end
end
