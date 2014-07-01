require_relative 'test_helper'

class InvoiceItemRepositoryTest < Minitest::Test
  attr_reader :invoice_item_repo

  def setup
    @invoice_item_repo = InvoiceItemRepository.from_file('./test/fixtures/invoice_items.csv')
  end

  def test_it_has_merchants
    assert invoice_item_repo.objects
  end

end
