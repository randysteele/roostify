class Earning < ApplicationRecord

    def calculate_taxes 
        @earnings = Earning.all  
        @tax = []  
          @earnings.map do |e|
             e.amount                                           
            if e.amount < 9999
            then  @tax = 0            
            elsif e.amount.between?(10000, 19999)                    
              then   @tax = e.amount * 0.10           
            elsif e.amount.between?(19999, 50000)                 
              then   @tax = e.amount * 0.20 
            else e.amount > 50000  
             then    @tax = e.amount * 0.30                    
            end                              
          end
          return @tax 
    end
end
