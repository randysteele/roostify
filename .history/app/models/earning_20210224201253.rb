class Earning < ApplicationRecord

    
    #swap if out with a case statement

    #functional that receives an amount as an argument and spits  out the tax amount
    #puts a string says the amount and the tax amout

    def calc_taxes
        case amount
        when amount < 10000
            return amount
        when amount.between?(10000, 19999)
            return amount * 0.10
        when amount.between?(19999, 50000)
            return amount * 0.20
        when amount > 50000 
            return amount * 0.30 
        end
    end



    
    # def calculate_taxes 
    #     @earnings = Earning.all  
    #     @tax = []  
    #       @earnings.each_with_index do |e, i|
    #          e.amount                                           
    #         if e.amount < 9999
    #         @tax = 0            
    #         elsif e.amount.between?(10000, 19999)                    
    #              @tax = @earnings[i].amount * 0.10           
    #         elsif e.amount.between?(19999, 50000)                 
    #              @tax = @earnings[i].amount * 0.20 
    #         else e.amount > 50000  
    #              @tax = @earnings[i].amount * 0.30                    
    #         end  
    #      #   byebug                          
    #       end
    #       return @tax 
    # end
end
