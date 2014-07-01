require './test/test_helper'
require './lib/merchant'

class MerchantTest < Minitest::Test
  attr_reader :merchant

  def setup
    @merchant = Merchant.new({id: "1", name: "Schroeder-Jerde", created_at: "2012-03-27 14:53:59 UTC", updated_at: "2012-03-27 14:53:59 UTC"}, "test/fixtures")
  end

  def test_it_exists
    assert merchant
  end

  def test_it_has_an_id
    assert_equal "1", merchant.id
  end

  def test_it_has_a_name
    assert_equal "Schroeder-Jerde", merchant.name
  end

  def test_it_has_a_created_at_date
    assert_equal "2012-03-27 14:53:59 UTC", merchant.created_at
  end

  def test_it_has_an_updated_at_date
    assert_equal "2012-03-27 14:53:59 UTC", merchant.updated_at
  end

  def test_it_has_items
    items = merchant.items
    assert_equal 10, items.count
    assert_kind_of Item, items[1]
  end

  def test_it_has_invoices
    invoices = merchant.invoices
    assert_equal 1, invoices.count
    assert_kind_of Invoice, invoices[0]
  end
end
