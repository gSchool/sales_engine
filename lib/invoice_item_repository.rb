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

  def find_items(id)
    invoice_items = sales_engine.find_invoice_items_by(id, "item_id")
    item_id = invoice_items.map {|invoice_item| invoice_item.item_id}.first
    sales_engine.find_items_by(item_id, "id")
  end

  def find_invoices(id)
    invoice_items = sales_engine.find_invoice_items_by(id, "invoice_id")
    invoice_id = invoice_items.map {|invoice_item| invoice_item.invoice_id}.first
    sales_engine.find_invoices_by(invoice_id, "id")
  end
end
