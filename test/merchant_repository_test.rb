require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/merchant'
require './lib/merchant_repository'

class MerchantRepositoryTest < MiniTest::Unit::TestCase
  
  attr_reader :mr

  def setup
    @mr = MerchantRepository.new
  end

  def test_it_exists
    assert_kind_of MerchantRepository, mr
  end

  def test_initialize_does_create_array
    assert_kind_of Array, mr.merchants
  end
end
