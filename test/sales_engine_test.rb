require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/sales_engine'

class SalesEngineTest < MiniTest::Test

  def setup
    @se = SalesEngine.new
  end

  def test_it_exists
    assert_kind_of SalesEngine, @se  
  end

  def test_it_responds_to_startup
    assert_respond_to @se, :startup
  end

  def test_it_responds_to_customer_repository
    assert_respond_to @se, :customer_repository
  end

  def test_it_returns_collection_of_customers_with_customer_repo_all_command
    customers = @se.customer_repository("./test/fixtures/customers_test.csv").all
    assert_equal 5, customers.count
  end

end
