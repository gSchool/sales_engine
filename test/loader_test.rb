require_relative './test_helper'
require './lib/loader'
require 'csv'

class LoaderTest < Minitest::Test
  def test_it_exists
    loader = Loader.read('test/fixtures/merchants.csv', Merchant)
    assert loader
  end

  def test_it_loads_data
    loader = Loader.read('test/fixtures/merchants.csv', Merchant)

    results = loader[0]
    assert_equal 'Schroeder-Jerde', results.name

    results = loader[1]
    assert_equal '2', results.id

    results = loader[2]
    assert_equal '2012-03-27 14:53:59 UTC', results.created_at

    results = loader[3]
    assert_equal '2012-03-27 14:53:59 UTC', results.updated_at
  end
end
