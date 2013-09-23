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

  def test_merchant_repository_does_return_array_of_merchants
    merchants = se.merchant_repository
    merchants.each do |merch|
      assert_kind_of Merchant, merch 
    end
  end

  def test_it_does_respond_to_invoice_repos
    assert SalesEngine.instance_methods.include?(:invoice_repository)
  end 

  def test_invoice_repository_does_return_array_of_invoices
    skip
    invoices = se.invoice_repository
    invoices.each { |invoice|  assert_kind_of Invoice, invoice }
  end

  def test_it_does_respond_to_item_repos
    assert SalesEngine.instance_methods.include?(:item_repository)
  end 

  def test_item_repository_does_return_array_of_item
    skip
    items = se.item_repository
    items.each { |item|  assert_kind_of Item, item }
  end

  def test_it_does_respond_to_invoice_item_repos
    assert SalesEngine.instance_methods.include?(:invoice_item_repository)
  end 

  def test_it_does_respond_to_customer_repos
    assert SalesEngine.instance_methods.include?(:customer_repository)
  end 

  def test_customer_repository_does_return_array_of_customer
    skip
    customers = se.customer_repository
    customers.each { |customer|  assert_kind_of Customer, customer }
  end
end
