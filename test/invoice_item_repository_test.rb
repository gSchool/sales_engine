require_relative 'test_helper'

class InvoiceItemRepositoryTest < Minitest::Test
  attr_reader :invoice_item_repo

  def setup
    engine = SalesEngine.new
    engine.startup("./test/fixtures")
    @invoice_item_repo = InvoiceItemRepository.from_file('./test/fixtures/invoice_items.csv', engine)
  end

  def test_it_has_merchants
    assert invoice_item_repo.objects
  end

  def test_it_finds_items
    items = invoice_item_repo.find_items("539")
    assert_equal 1, items.count
    assert_kind_of Item, items[0]
  end

  def test_it_finds_invoices
    invoices = invoice_item_repo.find_invoices("1")
    assert_equal 1, invoices.count
    assert_kind_of Invoice, invoices[0]
  end
end
