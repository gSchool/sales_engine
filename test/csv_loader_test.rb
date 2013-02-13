require 'minitest/autorun'
require 'minitest/pride'

require './lib/csv_loader'
require './lib/merchant'
require './lib/transaction'
require './lib/invoice'
require './lib/invoice_item'
require './lib/item'
require './lib/customer'

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

  def test_it_loads_invoices
    invoices = CsvLoader.load_invoices
    assert_equal 4843, invoices.size

    assert_kind_of Invoice, invoices.first
  end


  #should we move this to merchant_test?
  #testing implementation vs. output?
  def test_it_stores_invoices
    invoices = CsvLoader.load_invoices
    assert_equal 4843, Invoice.size
  end

  def test_it_loads_invoice_items
    invoice_items = CsvLoader.load_invoice_items
    assert_equal 21687, invoice_items.size

    assert_kind_of InvoiceItem, invoice_items.first
  end


  #should we move this to merchant_test?
  #testing implementation vs. output?
  def test_it_stores_invoice_items
    invoice_items = CsvLoader.load_invoice_items
    assert_equal 21687, InvoiceItem.size
  end

  def test_it_loads_items
    items = CsvLoader.load_items
    assert_equal 2483, items.size

    assert_kind_of Item, items.first
  end


  #should we move this to merchant_test?
  #testing implementation vs. output?
  def test_it_stores_items
    items = CsvLoader.load_items
    assert_equal 2483, Item.size
  end

  def test_it_loads_transactions
    transactions = CsvLoader.load_transactions
    assert_equal 5595, transactions.size

    assert_kind_of Transaction, transactions.first
  end


  #should we move this to merchant_test?
  #testing implementation vs. output?
  def test_it_stores_transactions
    transactions = CsvLoader.load_transactions
    assert_equal 5595, Transaction.size
  end

  def test_it_loads_customers
    customers = CsvLoader.load_customers
    assert_equal 1000, customers.size

    assert_kind_of Customer, customers.first
  end


  #should we move this to merchant_test?
  #testing implementation vs. output?
  def test_it_stores_customers
    customers = CsvLoader.load_customers
    assert_equal 1000, Customer.size
  end
end