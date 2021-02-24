class Earning < ApplicationRecord

    def calculate_taxes 
        @earnings = Earning.all    
          @earnings.map do |e|
             "#{e.amount}"                                           
            if "#{e.amount}".to_i < 9999
            puts "Congrats, you dont have any taxes to pay" 
            elsif "#{e.amount}".between?(9999, 19999)
               return  "#{e.amount}" * 0.10              
            elsif "#{e.amount}".between?(19999, 50000)
               return  "#{e.amount}" * 0.20
            else "#{e.amount}" > 50000 
               return  "#{e.amount}" * 0.30                     
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
