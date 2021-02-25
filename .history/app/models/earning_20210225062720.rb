class Earning < ApplicationRecord  
    

    def calc_taxes(amount = [])
        case amount
        when amount.between?(0, 9999).push(amount)
            return amount
        when amount.between?(10000, 19999).push(amount)
            return amount * 0.10
        when amount.between?(19999, 50000).push(amount)
            return amount * 0.20
        when amount > 50000 
            return amount * 0.30 
        end
    end
end
