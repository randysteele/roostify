class Earning < ApplicationRecord

    def calculate_taxes 
        @bracket_one = puts "congrats you are tax free"
        if "@earnings > 9999" 
            "#{@bracket_one}"
        else puts "Oh no, you have to pay taxes"
        end
    end
end
