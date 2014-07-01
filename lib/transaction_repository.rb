class TransactionRepository
  include Finder

  def self.from_file(filename='./data/transactions.csv')
    transactions = Loader.read(filename, Transaction)
    new(transactions)
  end

  attr_reader :objects
  def initialize(transactions)
    @objects = transactions
  end
end
