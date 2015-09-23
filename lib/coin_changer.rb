class CoinChanger

  attr_accessor :change
  attr_reader :coins, :purse

  def initialize(init_change)
    @change = init_change
    @coins = { quarters: 25, dimes: 10, nickels: 5, pennies: 1 }
    @purse = {}
  end

  def changer
    coins.each do |key, value|
      num_coins = (change / value)
      self.change %= value
      purse[key] = num_coins
    end
    purse
  end
end
