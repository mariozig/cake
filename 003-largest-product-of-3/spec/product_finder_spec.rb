require 'rspec'
require './product_finder'

describe ProductFinder do
  it 'supports ascending numbers' do
    numbers = [1, 2, 3, 4, 5]
    expect(ProductFinder.largest_product_of_3(numbers)).to eq(60)
  end

  it 'supports descending numbers' do
    numbers = [5, 4, 3, 2, 1]
    expect(ProductFinder.largest_product_of_3(numbers)).to eq(60)
  end

  it 'supports constant numbers' do
    numbers = [1, 1, 1, 1, 1]
    expect(ProductFinder.largest_product_of_3(numbers)).to eq(1)
  end

  it 'supports 3 highest numbers that are identical' do
    numbers = [1, 5, 2, 1, 2, 5, 5]
    expect(ProductFinder.largest_product_of_3(numbers)).to eq(125)
  end
end
