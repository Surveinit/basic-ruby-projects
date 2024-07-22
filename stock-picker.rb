def stock_picker(stocks_pricing)
  max_profit = 0
  best_day = []
  
  stocks_pricing.each_with_index do |buy_price, buy_day|

    stocks_pricing.each_with_index do |sell_price, sell_day|

      if sell_day > buy_day
        profit = sell_price - buy_price
        if profit > max_profit
          max_profit = profit
          best_day = [buy_day, sell_day]
        end
      end

    end
  end
  puts "You will get a profit of $#{max_profit} if you've bought between #{best_day}"
end


stock_picker([17,3,6,9,15])