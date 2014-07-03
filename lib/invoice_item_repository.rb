class InvoiceItemRepository
  include Finder

  def self.from_file(filename='./data/invoice_items.csv', engine)
    invoice_items = Loader.read(filename, InvoiceItem, self)
    new(invoice_items, engine)
  end

  attr_reader :objects, :sales_engine
  def initialize(invoice_items, engine)
    @objects = invoice_items
    @sales_engine = engine
  end
end
