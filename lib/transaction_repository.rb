class TransactionRepository
  attr_accessor :transactions
  def initialize
    @transactions = create_transaction_array
  end

  def create_transaction_array
    [Transaction.new]
  end

  def default_file
    'transactions.csv'
  end
end
