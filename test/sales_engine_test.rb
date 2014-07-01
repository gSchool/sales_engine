require_relative 'test_helper'
require_relative 'support/fake_sales_engine'

class SalesEngineTest < Minitest::Test
  attr_reader :sales_engine

  def setup
    @sales_engine = SalesEngine.new
    sales_engine.startup("test/fixtures")
  end

  def test_it_exists
    assert sales_engine
  end

  def test_it_loads_repositories
    sales_engine.merchant_repository.objects
    sales_engine.customer_repository.objects
    sales_engine.invoice_item_repository.objects
    sales_engine.invoice_repository.objects
    sales_engine.item_repository.objects
    sales_engine.transaction_repository.objects
  end


end
