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

end
