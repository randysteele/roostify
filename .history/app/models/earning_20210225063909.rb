class Earning < ApplicationRecord  
    

    def calc_taxes(amount)
        tax = []
        case amount
        when amount.between?(0, 9999)
            return amount
        when amount.between?(10000, 19999)
            tax = amount * 0.10 
            return tax
        when amount.between?(19999, 50000)
            tax = amount * 0.20
            return tax
        when amount > 50000 
            tax = amount * 0.30
            return tax 
        end
    end
end
