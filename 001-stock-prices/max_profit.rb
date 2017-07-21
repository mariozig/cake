# Better scan without nested loops
# Time taken: ~2 hours to converge on solution. Code ~10 min.
# Complexity: O(n)
class MaxProfit
  def self.run(prices)
    buy_price = prices.first
    max_profit = 0

    prices.each do |price|
      if price < buy_price
        buy_price = price
        next
      end

      potential_profit = price - buy_price
      max_profit = potential_profit if potential_profit > max_profit
    end

    max_profit
  end
end
