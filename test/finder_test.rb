require './test/test_helper'
require './lib/merchant_repository'
require './lib/finder'
require './lib/loader'
require 'csv'
require 'pry'

class FinderTest < Minitest::Test
  attr_reader :objects
  def setup
    @objects = MerchantRepository.from_file('./test/fixtures/merchants.csv')
  end

  def test_it_finds_a_random_object
    merchant_1 = objects.random
    merchant_2 = objects.random

    refute merchant_1 == merchant_2
  end

  def test_it_finds_by_name
    result = objects.find_by_name('Bernhard-Johns')
    assert_equal '7', result.id
  end

  def test_it_finds_all_by_name
    result = objects.find_all_by_name('Bernhard-Johns')
    assert_equal 2, result.count
  end

  def test_it_finds_by_id
    result = objects.find_by_id('7')
    assert_equal 'Bernhard-Johns', result.name
  end

  def test_it_finds_by_created_at
    result = objects.find_by_created_at('2012-03-27 14:53:59 UTC')
    assert_equal '1', result.id
  end

  def test_it_finds_all_by_created_at
    result = objects.find_all_by_created_at('2012-03-27 14:53:59 UTC')
    assert_equal 10, result.count
  end

  def test_it_finds_by_updated_at
    result = objects.find_by_updated_at('2012-03-27 14:53:59 UTC')
    assert_equal '1', result.id
  end

  def test_it_finds_all_by_updated_at
    result = objects.find_all_by_updated_at('2012-03-27 14:53:59 UTC')
    assert_equal 9, result.count
  end
end
