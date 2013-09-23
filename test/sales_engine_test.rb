require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'

class SalesEngineTest < MiniTest::Unit::TestCase

  attr_reader :se

  def setup
    @se = SalesEngine.new
  end

  def test_it_does_exist
    assert_kind_of SalesEngine, se
  end

  def test_it_does_respond_to_startup
    assert SalesEngine.instance_methods.include?(:startup)
  end

  def test_it_does_respond_to_merchant_repos
    assert SalesEngine.instance_methods.include?(:merchant_repository)
  end

  def test_merchant_repository_does_return_array_of_merchants
    skip
    mechants = se.merchant_repository
    merchants.each do |merch|
      assert_kind_of Merchant, merch 
    end
  end

  def test_it_does_respond

end