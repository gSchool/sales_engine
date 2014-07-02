require_relative 'test_helper'

class InvoiceItemTest < Minitest::Test
  attr_reader :invoice_item

  def setup
    engine = SalesEngine.new
    engine.startup("./test/fixtures")
    @invoice_item = InvoiceItem.new({id: '1', item_id: '539', invoice_id: '1', quantity: '5', unit_price: '13635', created_at: '2012-03-27 14:54:09 UTC', updated_at: '2012-03-27 14:54:09 UTC'}, InvoiceItemRepository.from_file('test/fixtures/invoice_items.csv', engine))
  end

  def test_it_has_an_id
    assert_equal '1', invoice_item.id
  end

  def test_it_has_an_item_id
    assert_equal '539', invoice_item.item_id
  end

  def test_it_has_an_invoice_id
    assert_equal '1', invoice_item.invoice_id
  end

  def test_it_has_a_quantity
    assert_equal '5', invoice_item.quantity
  end

  def test_it_has_a_unit_price
    assert_equal '13635', invoice_item.unit_price
  end

  def test_it_has_created_at_date
    assert_equal '2012-03-27 14:54:09 UTC', invoice_item.created_at
  end

  def test_it_has_updated_at_date
    assert_equal '2012-03-27 14:54:09 UTC', invoice_item.updated_at
  end
end
