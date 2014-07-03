require './test/test_helper'

class ItemTest < Minitest::Test
  attr_reader :item
  def setup
    engine = SalesEngine.new
    engine.startup("./test/fixtures")
    @item = Item.new({id: '1',name: 'Item Qui Esse',description: 'Nihil autem sit odio inventore deleniti. Est laudantium ratione distinctio laborum. Minus voluptatem nesciunt assumenda dicta voluptatum porro.',unit_price: '75107',merchant_id: '1',created_at: '2012-03-27 14:53:59 UTC',updated_at: '2012-03-27 14:53:59 UTC'}, ItemRepository.from_file('test/fixtures/items.csv', engine))
  end

  def test_it_exists
    assert item
  end

  def test_it_has_an_id
    assert_equal '1', item.id
  end

  def test_it_has_a_name
    assert_equal 'Item Qui Esse', item.name
  end

  def test_it_has_a_description
    assert_equal 'Nihil autem sit odio inventore deleniti. Est laudantium ratione distinctio laborum. Minus voluptatem nesciunt assumenda dicta voluptatum porro.', item.description
  end

  def test_it_has_a_unit_price
    assert_equal '75107', item.unit_price
  end

  def test_it_has_a_merchant_id
    assert_equal '1', item.merchant_id
  end

  def test_it_has_a_created_at_date
    assert_equal '2012-03-27 14:53:59 UTC', item.created_at
  end

  def test_it_has_a_updated_at_date
    assert_equal '2012-03-27 14:53:59 UTC', item.updated_at
  end

  def test_it_has_invoice_items
    invoice_items = item.invoice_items
    assert_equal 1, invoice_items.count
    assert_kind_of InvoiceItem, invoice_items[0]
  end

  def test_it_has_a_merchant
    merchants = item.merchant
    assert_equal 1, merchants.count
    assert_kind_of Merchant, merchants[0]
  end
end
