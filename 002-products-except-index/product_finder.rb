# Solution with improved complexity.  Required hint from interview cake
# Time taken: 4 hours
# Complexity: O(n)
class ProductFinder
  def self.products_of_all_ints_except_at_index(ints)
    # Needed hint to realize splitting into greedy left/right
    products_from_left = []
    products_from_right = []
    calculated_products = []

    ints.each_with_index do |_, index|
      if index.zero?
        products_from_left << 1
      else
        previous_index = index - 1
        products_from_left << products_from_left[previous_index] * ints[previous_index]
      end
    end

    ints.reverse.each_with_index do |_, index|
      if index.zero?
        products_from_right << 1
      else
        previous_index = index - 1
        products_from_right << products_from_right[previous_index] * ints.reverse[previous_index]
      end
    end
    products_from_right.reverse!

    ints.each_with_index do |_, index|
      product = products_from_left[index] * products_from_right[index]
      calculated_products << product
    end

    calculated_products
  end
end
