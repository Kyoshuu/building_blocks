def stock_picker prices
	buy_day = 0 
	sell_day = 0
	income = -1.0/0 #negative infinity

	prices.each_with_index do |buy_price, buy_index|
		prices[buy_index+1..-1].each_with_index do |sell_price, sell_index|
			puts "buy_day: %2d, buy_price: %2d, sell_day: %2d, sell_price: %2d, income: %02d" %
				[buy_index, buy_price, buy_index + sell_index + 1, sell_price, sell_price - buy_price]
			if sell_price - buy_price > income
				income = sell_price - buy_price
				buy_day = buy_index
				sell_day = buy_index + sell_index + 1
			end
		end
	end

	[buy_day, sell_day]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])