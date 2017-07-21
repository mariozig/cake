require 'rspec'
require '../max_profit'

describe MaxProfit do
  it 'supports ascending prices' do
    prices = [1, 2, 3, 4, 5]
    expect(MaxProfit.run(prices)).to eq(4)
  end

  it 'supports descending prices' do
    prices = [5, 4, 3, 2, 1]
    expect(MaxProfit.run(prices)).to eq(0)
  end

  it 'supports constant prices' do
    prices = [1, 1, 1, 1, 1]
    expect(MaxProfit.run(prices)).to eq(0)
  end

  it 'supports random prices with profit' do
    prices = [1, 5, 2, 1, 2]
    expect(MaxProfit.run(prices)).to eq(4)
  end
end
