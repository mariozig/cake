# Calculate highest product and using `nums` which will always contain at least 3 numbers
# Time taken: ~1 hour to converge on solution + code
# Complexity: O(n)
class ProductFinder
  def self.largest_product_of_3(nums)
    first = nums.pop
    second = nums.pop
    third = nums.pop

    nums.each do |num|
      if num > third && num <= second
        third = num
      elsif num > second && num <= first
        second = num
      elsif num > first
        first = num
      end
    end

    first * second * third
  end
end

