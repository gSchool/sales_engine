require_relative 'test_helper'

class TransactionRepositoryTest < Minitest::Test
  attr_reader :transaction_repo

  def setup
    @transaction_repo = TransactionRepository.from_file('./test/fixtures/transactions.csv')
  end

  def test_it_has_transactions
    assert transaction_repo.objects
  end

end
