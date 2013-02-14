require 'minitest/autorun'
require 'minitest/pride'

require './lib/csv_loader'
require './lib/merchant'
require './lib/transaction'
require './lib/invoice'
require './lib/invoice_item'
require './lib/item'
require './lib/customer'
require './sales_engine'

class SalesEngineTest < Minitest::Unit::TestCase

  def test_it_loads_all_data_when_startup_called
    SalesEngine.startup
    assert_equal 100, Merchant.size
    assert_equal 4843, Invoice.size
    assert_equal 21687, InvoiceItem.size
    assert_equal 2483, Item.size
    assert_equal 1000, Customer.size
    assert_equal 5595, Transaction.size
  end
end