require_relative 'transaction'
require_relative 'base_repository'

class TransactionRepository < BaseRepository
  def initialize
    @collection_array = create_transaction_array
  end

  def create_transaction_array
    [Transaction.new]
  end

  def default_file
    'transactions.csv'
  end
end
