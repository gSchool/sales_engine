class ItemRepository
  include Finder

  def self.from_file(filename='./data/items.csv')
    invoice_items = Loader.read(filename, InvoiceItem)
    new(invoice_items)
  end

  attr_reader :objects
  def initialize(items)
    @objects = items
  end
end
