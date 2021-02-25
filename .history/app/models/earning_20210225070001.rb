class Earning < ApplicationRecord  


    def calculate_taxes 
        @earnings = Earning.all    
          @earnings.map do |e|
           return  e.amount                                           
            if e.amount < 9999
            puts "Congrats, you dont have any taxes to pay" 
            elsif e.amount.between?(9999, 19999)
               return  e.amount * 0.10              
            elsif e.amount.between?(19999, 50000)
               return  e.amount * 0.20
            else e.amount > 50000 
               return  e.amount * 0.30                     
            end                              
          end
    end
    

    # def calc_taxes(amount)
    #     case amount
    #     when amount.between?(0, 9999)
    #         tax = 0
    #         return amount
    #     when amount.between?(10000, 19999)
    #         tax = amount * 0.10 
    #         return tax
    #     when amount.between?(19999, 50000)
    #         tax = amount * 0.20
    #         return tax
    #     when amount > 50000 
    #         tax = amount * 0.30
    #         return tax 
    #     end
    # end
end
