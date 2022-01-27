def stock_picker(array)

    best_profit = nil 
    best_profit_array = []

    array.each_with_index{|buy_price,day_index|

        rest_of_days = array[day_index+1..array.size()-1]
        
        rest_of_days.each_with_index{|sell_price, second_day_index|
            profit = sell_price-buy_price

            if (!best_profit)||(profit>best_profit)
                best_profit = profit
                best_profit_array = [day_index, second_day_index+day_index+1]
                
            end
        }
    
    }

    return best_profit_array

end

p stock_picker([17,3,6,9,15,8,6,1,10])