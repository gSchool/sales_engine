require 'minitest/autorun'
require 'minitest/pride'

require './lib/merchant'

class MerchantTest < MiniTest::Unit::TestCase

  def test_it_exists
    merchant = Merchant.new({})
    assert_kind_of Merchant, merchant
  end

  # def test_it_can_create_merchants
  #   data = [{id: 'id', name: 'name', created_at: 'date', updated_at: 'another_date'}]
  #   merchant = Merchant.populate data
  #   assert_equals 'id', merchant.id
  # end

  def test_it_is_initialized_from_a_hash_of_data
    merchant = Merchant.new( id: 'id', name: 'name', created_at: 'date', updated_at: 'another_date' )
    assert_equal 'id', merchant.id
    assert_equal 'name', merchant.name
    assert_equal 'date', merchant.created_at
    assert_equal 'another_date', merchant.updated_at

    merchant = Merchant.new( id: 'id2', name: 'name2', created_at: 'date2', updated_at: 'another_date2' )
    assert_equal 'id2', merchant.id
    assert_equal 'name2', merchant.name
    assert_equal 'date2', merchant.created_at
    assert_equal 'another_date2', merchant.updated_at
  end

  def test_it_stores_merchants_from_an_array
    data = [Merchant.new( id: 'id', name: 'name', created_at: 'date', updated_at: 'another_date' )]
    Merchant.add data
    assert_equal 1, Merchant.size

  end

end