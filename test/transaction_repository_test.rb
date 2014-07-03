require_relative 'test_helper'

class TransactionRepositoryTest < Minitest::Test
  attr_reader :transaction_repo

  def setup
    engine = SalesEngine.new
    engine.startup("./test/fixtures")
    @transaction_repo = TransactionRepository.from_file('./test/fixtures/transactions.csv', engine)
  end

  def test_it_has_transactions
    assert transaction_repo.objects
  end

  def test_it_has_invoices
    invoices = transaction_repo.find_invoices("1")
    assert_equal 1, invoices.count
    assert_kind_of Invoice, invoices[0]
  end

end
