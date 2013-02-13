require 'minitest/autorun'
require 'minitest/pride'

require './lib/csv_loader'
require './lib/merchant'

class CsvLoaderTest < MiniTest::Unit::TestCase

  def test_it_loads_merchants
    merchants = CsvLoader.load_merchants
    assert_equal 100, merchants.size

    assert_kind_of Merchant, merchants.first
  end

#should we move this to merchant_test?
#testing implementation vs. output?
  def test_it_stores_merchants
    merchants = CsvLoader.load_merchants
    assert_equal 100, Merchant.size
  end
end