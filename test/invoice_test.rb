require './test/test_helper'

class InvoiceTest < Minitest::Test
  attr_reader :invoice
  def setup
    engine = SalesEngine.new
    engine.startup("./test/fixtures")
    @invoice = Invoice.new({id: "1", customer_id: "1", merchant_id: "26", status: "shipped", created_at: "2012-03-25 09:54:09 UTC", updated_at: "2012-03-25 09:54:09 UTC"}, "test/fixtures", InvoiceRepository.from_file('test/fixtures/invoices.csv', engine))
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

  def test_it_has_transactions
    skip
    transactions = invoice.transactions
    assert_equal 1, transactions.count
    assert_kind_of Transaction, transactions[0]
  end

  def test_it_has_invoice_items
    skip
    invoice_items = invoice.invoice_items
    assert_equal 8, invoice_items.count
    assert_kind_of InvoiceItem, invoice_items[0]
  end

  def test_it_has_items
    skip
    items = invoice.items
    assert_equal 1, items.count
    assert_kind_of Item, items[0]
  end

  def test_it_has_a_customer
  end

  def test_it_has_a_merchant
  end
end
