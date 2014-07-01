require './test/test_helper'

class InvoiceRepositoryTest < Minitest::Test
  attr_reader :invoice_repo
  def setup
    @invoice_repo = InvoiceRepository.from_file('./test/fixtures/items.csv')
  end

  def test_it_has_items
    assert invoice_repo.objects
  end
end
