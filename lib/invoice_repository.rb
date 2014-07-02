require './lib/finder'

class InvoiceRepository
  include Finder
  def self.from_file(file_name='./data/invoices.csv', engine)
    invoices = Loader.read(file_name, Invoice, self)
    new(invoices, engine)
  end

  attr_reader :objects, :sales_engine
  def initialize(invoices, engine)
    @objects = invoices
    @sales_engine = engine
  end
end
