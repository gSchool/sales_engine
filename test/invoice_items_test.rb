require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/invoice_items'

class InvoiceItemsTest < MiniTest::Test

  def setup
    @ii = InvoiceItems.new
  end

  def test_it_can_be_given_all_its_attributes
    item = InvoiceItems.new(:id => "1",
                            :item_id => "100",
                            :invoice_id => "99",
                            :quantity => "4",
                            :unit_price => "4000",
                            :created_at => "2012-03-27 14:54:09 UTC",
                            :updated_at => "2012-03-27 14:54:10 UTC")
    assert_equal "1", item.id
    assert_equal "100", item.item_id
    assert_equal "99", item.invoice_id
    assert_equal "4", item.quantity
    assert_equal "4000", item.unit_price
    assert_equal "2012-03-27 14:54:09 UTC", item.created_at
    assert_equal "2012-03-27 14:54:10 UTC", item.updated_at
  end

end
