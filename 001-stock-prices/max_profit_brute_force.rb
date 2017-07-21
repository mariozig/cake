# Brute force scan
# Time taken: ~15 min
# Complexity: O(n^2)
class MaxProfitBruteForce
  def self.run(prices)
    max_profit = 0

    prices.each_with_index do |buy_price, index|
      prices[index + 1..-1].each do |sell_price|
        potential_profit = sell_price - buy_price
        max_profit = potential_profit if potential_profit > max_profit
      end
    end

    max_profit
  end
end
