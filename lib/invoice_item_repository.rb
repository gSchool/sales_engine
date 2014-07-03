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

  def find_items(item_id)
    sales_engine.find_items_by(item_id, "id")
  end

  def find_invoices(invoice_id)
    sales_engine.find_invoices_by(invoice_id, "id")
  end
end
