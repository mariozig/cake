require 'rspec'
require './product_finder'

describe ProductFinder do
  it 'calculates products correctly' do
    ints = [1, 7, 3, 4]
    products = ProductFinder.products_of_all_ints_except_at_index(ints)
    expect(products).to eq([84, 12, 28, 21])
  end

  it 'returns an empty array when input is empty' do
    products = ProductFinder.products_of_all_ints_except_at_index([])
    expect(products).to be_empty
  end
end
