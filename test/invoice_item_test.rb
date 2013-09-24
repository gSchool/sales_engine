require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/invoice_item'

class InvoiceItemTest < MiniTest::Unit::TestCase

  def test_it_exists
    ii = InvoiceItem.new
    assert_kind_of InvoiceItem, ii 
  end

end
