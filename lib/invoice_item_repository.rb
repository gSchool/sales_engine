class InvoiceItemRepository
  include Finder

  def self.from_file(filename='./data/invoice_items.csv')
    invoice_items = Loader.read(filename, InvoiceItem)
    new(invoice_items)
  end

  attr_reader :objects
  def initialize(invoice_items)
    @objects = invoice_items
  end
end
