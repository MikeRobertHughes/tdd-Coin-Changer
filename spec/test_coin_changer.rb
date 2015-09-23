require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/coin_changer'

class TestCoinChanger < Minitest::Test

  def test_coin_changer_exists
    assert(CoinChanger)
  end

  def test_coin_changer_accepts_integer
    assert(CoinChanger.new(99))
  end

  def test_coin_changer_returns_change
    changer = CoinChanger.new(99)
    coinage = changer.change
    assert_equal(99, coinage)
  end

  def test_returns_pennies
    changer = CoinChanger.new(99)
    coinage = changer.pennies
    assert_equal({pennies: 99}, coinage)
  end

  def test_returns_nickels
    changer = CoinChanger.new(99)
    coinage = changer.nickels
    assert_equal({nickels: 19}, coinage)
  end

  def test_returns_dimes
    changer = CoinChanger.new(99)
    coinage = changer.dimes
    assert_equal({dimes: 9}, coinage)
  end

  def test_returns_quarters
    changer = CoinChanger.new(99)
    coinage = changer.quarters
    assert_equal({quarters: 3}, coinage)
  end

  def test_coin_changer_returns_correct_change
    changer = CoinChanger.new(41)
    coinage = changer.change
    assert_equal({quarters: 1, dimes: 1, nickels: 1, pennies: 1}, coinage)
  end

end
