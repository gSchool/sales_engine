class TransactionRepository
  include Finder

  def self.from_file(filename='./data/transactions.csv', engine)
    transactions = Loader.read(filename, Transaction, self)
    new(transactions, engine)
  end

  attr_reader :objects, :sales_engine
  def initialize(transactions, engine)
    @objects      = transactions
    @sales_engine = engine
  end

  def find_invoices(invoice_id)
    sales_engine.find_invoices_by(invoice_id, "id")
  end
end
