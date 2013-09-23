require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/merchant'
require './lib/merchant_repository'

class MerchantRepositoryTest < MiniTest::Unit::TestCase
  
  def test_it_exists
    mr = MerchantRepository.new
    assert_kind_of MerchantRepository, mr
  end
end
