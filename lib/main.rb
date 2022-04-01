def stock_picker(array)
  lowest_price = array.first
  lowest_index = array.index(lowest_price)
  profit = 0
  days = Array.new(2)

  array.each_with_index do |price, index|
    if price < lowest_price
      lowest_price = price
      lowest_index = index
    end

    if price - lowest_price > profit
      profit = price - lowest_price
      days = [lowest_index, index]
    end
  end

  days
end

p stock_picker([17,3,6,9,15,8,6,1,10])