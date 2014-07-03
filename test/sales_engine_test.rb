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

  def test_it_finds_items_by
    items = sales_engine.find_items_by("1", "merchant_id")
    assert_equal 12, items.count
    assert_kind_of Item, items[1]
  end

  def test_it_finds_invoices_by
    invoices = sales_engine.find_invoices_by("1", "merchant_id")
    assert_equal 1, invoices.count
    assert_kind_of Invoice, invoices[0]
  end

  def test_it_finds_invoice_items_by
    invoice_items = sales_engine.find_invoice_items_by("1", "item_id" )
    assert_equal 1, invoice_items.count
    assert_kind_of InvoiceItem, invoice_items[0]
  end

  def test_if_finds_merchant_by
    merchant = sales_engine.find_merchant_by("1", "id")
    assert_kind_of Merchant, merchant
  end
end
