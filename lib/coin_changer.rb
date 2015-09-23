class CoinChanger

  attr_accessor :change, :coins, :purse

  def initialize(init_change)
    @change = init_change
    @coins = { quarters: 25, dimes: 10, nickels: 5, pennies: 1 }
    @purse = {}
  end

  def changer
    coins.each do |key, value|
      num_coins = (@change / value)
      @change = @change % value
      purse[key] = num_coins
    end
    purse
  end

  def pennies
    num_coins = (change / 1)
    purse[:pennies] = num_coins
    purse
  end

  def nickels
    num_coins = (change / 5)
    purse[:nickels] = num_coins
    purse
  end

  def dimes
    num_coins = (change / 10)
    purse[:dimes] = num_coins
    purse
  end

  def quarters
    num_coins = (change / 25)
    purse[:quarters] = num_coins
    purse
  end
end
