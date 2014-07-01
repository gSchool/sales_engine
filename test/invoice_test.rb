require './test/test_helper'

class InvoiceTest < Minitest::Test
  attr_reader :invoice
  def setup
    @invoice = Invoice.new(id: "1", customer_id: "1", merchant_id: "26", status: "shipped", created_at: "2012-03-25 09:54:09 UTC", updated_at: "2012-03-25 09:54:09 UTC")
  end

  def test_it_exists
    assert invoice
  end

  def test_it_has_an_id
    assert_equal "1", invoice.id
  end

  def test_it_has_a_customer_id
    assert_equal "1", invoice.customer_id
  end

  def test_it_has_a_merchant_id
    assert_equal "26", invoice.merchant_id
  end

  def test_it_has_a_status
    assert_equal "shipped", invoice.status
  end

  def test_it_has_a_create_at_date
    assert_equal "2012-03-25 09:54:09 UTC", invoice.created_at
  end

  def test_it_has_an_updated_at_date
    assert_equal "2012-03-25 09:54:09 UTC", invoice.updated_at
  end
end
