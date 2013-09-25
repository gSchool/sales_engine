require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/merchant.rb'

class MerchantTest < MiniTest::Test

  def setup
    @m = Merchant.new
  end

  def test_it_exists
    assert_kind_of Merchant,@m
  end

  def test_it_can_be_give_all_its_attributes
    merchant = Merchant.new(:id => "1",
                            :name => "Florist Fryers", 
                            :created_at => "2012-03-27 14:54:09 UTC", 
                            :updated_at => "2012-03-27 14:54:10 UTC")
    assert_equal "Florist Fryers", merchant.name
    assert_equal "1", merchant.id
    assert_equal "2012-03-27 14:54:09 UTC", merchant.created_at
    assert_equal "2012-03-27 14:54:10 UTC", merchant.updated_at
  end

end
