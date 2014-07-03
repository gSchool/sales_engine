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

  def find_invoices(id)
    transactions = sales_engine.find_transactions_by(id, "invoice_id")
    invoice_id = transactions.map {|transaction| transaction.invoice_id}.first
    sales_engine.find_invoices_by(invoice_id, "id")
  end
end
