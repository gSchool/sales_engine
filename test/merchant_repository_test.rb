require './test/test_helper'

class MerchantRepositoryTest < Minitest::Test
  attr_reader :merchant_repo

  def setup
    engine = SalesEngine.new
    engine.startup('./test/fixtures')
    @merchant_repo = MerchantRepository.from_file('./test/fixtures/merchants.csv', engine)
  end

  def test_it_has_merchants
    assert merchant_repo.objects
  end

  def test_it_finds_items
    items = merchant_repo.find_items("1")
    assert_equal 12, items.count
    assert_kind_of Item, items[1]
  end

  def test_it_finds_invoices
    invoices = merchant_repo.find_invoices("1")
    assert_equal 1, invoices.count
    assert_kind_of Invoice, invoices[0]
  end
end
