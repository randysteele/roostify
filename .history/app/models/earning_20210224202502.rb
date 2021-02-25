class Earning < ApplicationRecord

    
    #swap if out with a case statement

    #functional that receives an amount as an argument and spits  out the tax amount
    #puts a string says the amount and the tax amout

    def calc_taxes(amount)
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
end
