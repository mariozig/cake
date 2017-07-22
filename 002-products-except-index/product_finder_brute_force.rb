# Brute force solution.
# Time taken: ~15 minutes
# Complexity: O(n^2)
class ProductFinderBruteForce
  def self.products_of_all_ints_except_at_index(ints)
    products = []
    ints.each_with_index do |_, index|
      product = 1
      ints.each_with_index do |int_inner, index_inner|
        product *= int_inner unless index_inner == index
      end

      products << product
    end

    products
  end
end
