require 'rspec'
require '../max_profit_brute_force'

describe MaxProfitBruteForce do
  it 'supports ascending prices' do
    prices = [1, 2, 3, 4, 5]
    expect(MaxProfitBruteForce.run(prices)).to eq(4)
  end

  it 'supports descending prices' do
    prices = [5, 4, 3, 2, 1]
    expect(MaxProfitBruteForce.run(prices)).to eq(0)
  end

  it 'supports constant prices' do
    prices = [1, 1, 1, 1, 1]
    expect(MaxProfitBruteForce.run(prices)).to eq(0)
  end

  it 'supports random prices with profit' do
    prices = [1, 5, 2, 1, 2]
    expect(MaxProfitBruteForce.run(prices)).to eq(4)
  end
end
