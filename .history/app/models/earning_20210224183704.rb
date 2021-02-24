class Earning < ApplicationRecord

    def calculate_taxes 
        @earnings = Earning.all  
        @tax = []  
          @earnings.map do |e|
             e.amount                                           
            if e.amount < 9999
            @tax = 0 
            
            elsif e.amount.between?(9999, 19999)
                 e.amount * 0.10    
                 @tax = e.amount * 0.10           
            elsif e.amount.between?(19999, 50000)
                 e.amount * 0.20
                 @tax = @earnings * 0.20 
            else e.amount > 50000 
                 e.amount * 0.30  
                 @tax = e.amount * 0.30                    
            end                              
          end
    end

#    def bracket_one 
#     @earnings = Earning.all 
#      @earnings * 0.10 
#    end

#    def bracket_two
#     @earnings = Earning.all 
#      @earnings * 0.20
#    end

#    def bracket_three
#     @earnings = Earning.all 
#      @earnings * 0.30
#    end



end
