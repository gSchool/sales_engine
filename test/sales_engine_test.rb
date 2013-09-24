require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require './lib/merchant'

class SalesEngineTest < MiniTest::Unit::TestCase

  attr_reader :se

  def setup
    @se = SalesEngine.new
  end

  def test_it_does_exist
    assert_kind_of SalesEngine, se
  end

  def test_it_does_respond_to_startup
    assert SalesEngine.instance_methods.include?(:startup)
  end

  def test_it_does_respond_to_merchant_repos
    assert SalesEngine.instance_methods.include?(:merchant_repository)
  end

  def test_it_does_return_a_merchant_repository_instance
    assert_kind_of MerchantRepository, @se.merchant_repository
  end

  def test_it_does_respond_to_invoice_repos
    assert SalesEngine.instance_methods.include?(:invoice_repository)
  end

  def test_it_does_return_an_invoice_repository_instance
    assert_kind_of InvoiceRepository, @se.invoice_repository
  end 

  def test_it_does_respond_to_item_repos
    assert SalesEngine.instance_methods.include?(:item_repository)
  end 

  def test_it_does_return_an_item_repository_instance
    assert_kind_of ItemRepository, @se.item_repository
  end

  def test_it_does_respond_to_invoice_item_repos
    assert SalesEngine.instance_methods.include?(:invoice_item_repository)
  end

  def test_it_does_return_an_invoice_items_repository_instance
    assert_kind_of InvoiceItemRepository, @se.invoice_item_repository
  end 

  def test_it_does_respond_to_customer_repos
    assert SalesEngine.instance_methods.include?(:customer_repository)
  end

  def test_it_does_return_a_customer_repository_instance
    assert_kind_of CustomerRepository, @se.customer_repository
  end 

  def test_it_does_respond_to_transaction_repos
    assert SalesEngine.instance_methods.include?(:transaction_repository)
  end

  def test_it_does_return_a_transaction_repository_instance
    assert_kind_of TransactionRepository, @se.transaction_repository
  end
end
