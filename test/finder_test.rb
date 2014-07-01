require './test/test_helper'
require 'csv'
require './lib/finder'
require './test/support/everything'

class FinderTest < Minitest::Test
  attr_reader :objects
  def setup
    @objects = EverythingRepository.from_file('./test/fixtures/everything.csv')
  end

  def test_it_finds_a_random_object
    merchant_1 = objects.random
    merchant_2 = objects.random

    refute merchant_1 == merchant_2
  end

  def test_it_finds_by_name
    result = objects.find_by_name('Bernhard-Johns')
    assert_equal '6', result.id
  end

  def test_it_finds_all_by_name
    result = objects.find_all_by_name('Bernhard-Johns')
    assert_equal 1, result.count
  end

  def test_it_finds_by_id
    result = objects.find_by_id('6')
    assert_equal 'Bernhard-Johns', result.name
  end

  def test_it_finds_by_created_at
    result = objects.find_by_created_at('2012-03-27 14:54:10 UTC')
    assert_equal '3', result.id
  end

  def test_it_finds_all_by_created_at
    result = objects.find_all_by_created_at('2012-03-27 14:54:10 UTC')
    assert_equal 7, result.count
  end

  def test_it_finds_by_updated_at
    result = objects.find_by_updated_at('2012-03-27 14:54:10 UTC')
    assert_equal '3', result.id
  end

  def test_it_finds_all_by_updated_at
    result = objects.find_all_by_updated_at('2012-03-27 14:54:10 UTC')
    assert_equal 7, result.count
  end

  def test_it_finds_by_first_name
    result = objects.find_by_first_name('Joey')
    assert_equal '1', result.id
  end

  def test_it_finds_all_by_first_name
    result = objects.find_all_by_first_name('Joey')
    assert_equal 1, result.count
  end

  def test_it_finds_by_last_name
    result = objects.find_by_last_name('Nader')
    assert_equal '5', result.id
  end

  def test_it_finds_all_by_last_name
    result = objects.find_all_by_last_name('Nader')
    assert_equal 1, result.count
  end

  def test_it_finds_by_item_id
    result = objects.find_by_item_id('539')
    assert_equal '1', result.id
  end

  def test_it_finds_all_by_item_id
    result = objects.find_all_by_item_id('539')
    assert_equal 1, result.count
  end

  def test_it_finds_by_quantity
    result = objects.find_by_quantity('6')
    assert_equal '8', result.id
  end

  def test_it_finds_all_by_quantity
    result = objects.find_all_by_quantity('6')
    assert_equal 2, result.count
  end

  def test_it_finds_by_unit_price
    result = objects.find_by_unit_price('23324')
    assert_equal '2', result.id
  end

  def test_it_finds_all_by_unit_price
    result = objects.find_all_by_unit_price('23324')
    assert_equal 1, result.count
  end

  def test_it_finds_by_customer_id
    result = objects.find_by_customer_id('1')
    assert_equal '1', result.id
  end

  def test_it_finds_all_by_customer_id
    result = objects.find_all_by_customer_id('1')
    assert_equal 8, result.count
  end

  def test_it_finds_by_merchant_id
    result = objects.find_by_merchant_id('27')
    assert_equal '9', result.id
  end

  def test_it_finds_all_by_merchant_id
    result = objects.find_all_by_merchant_id('27')
    assert_equal 1, result.count
  end

  def test_it_finds_by_status
    result = objects.find_by_status('shipped')
    assert_equal '1', result.id
  end

  def test_it_finds_all_by_status
    result = objects.find_all_by_status('shipped')
    assert_equal 9, result.count
  end

  def test_it_finds_by_invoice_id
    result = objects.find_by_invoice_id('5')
    assert_equal '4', result.id
  end

  def test_it_finds_all_by_invoice_id
    result = objects.find_all_by_invoice_id('5')
    assert_equal 1, result.count
  end

  def test_it_finds_by_credit_card_number
    result = objects.find_by_credit_card_number('4801647818676136')
    assert_equal '7', result.id
  end

  def test_it_finds_all_by_credit_card_number
    result = objects.find_all_by_credit_card_number('4801647818676136')
    assert_equal 1, result.count
  end

  def test_it_finds_by_result
    result = objects.find_by_result('success')
    assert_equal '1', result.id
  end

  def test_it_finds_all_by_result
    result = objects.find_all_by_result('success')
    assert_equal 9, result.count
  end
end
