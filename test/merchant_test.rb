require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'

class MerchantTest < MiniTest::Unit::TestCase
  
  def test_it_exists
    m = Merchant.new
    assert_kind_of Merchant, m
  end
end
