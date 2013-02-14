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

  def test_it_returns_a_random_merchant_when_random_is_called
    merchants = CsvLoader.load_merchants
    assert_equal 100, merchants.size

    random_merchant1 = Merchant.random
    assert_kind_of Merchant, random_merchant1
    #can i do a compare assert?
  end

  def test_it_finds_a_merchant_by_id
    merchants = CsvLoader.load_merchants
    merchant = Merchant.find_by_id("10")
    assert_equal "10", merchant.id
  end

  def test_if_returns_a_merchant_by_name
    merchants = CsvLoader.load_merchants
    found_merchant = Merchant.find_by_name("Schuster Group")
    assert_equal "Schuster Group", found_merchant.name
  end

  def test_it_returns_all_merchants_by_name
    merchants = CsvLoader.load_merchants
    found_merchants = Merchant.find_all_by_name("Williamson Group")
    assert_equal 2, found_merchants.length
  end

end