class ItemRepository
  include Finder

  def self.from_file(filename='./data/items.csv', engine)
    items = Loader.read(filename, Item, self)
    new(items, engine)
  end

  attr_reader :objects, :sales_engine
  def initialize(items, engine)
    @objects       = items
    @sales_engine  = engine
  end

  def find_invoice_items(id)
    sales_engine.find_invoice_items_by(id, "item_id")
  end

  def find_merchant(merchant_id)
    sales_engine.find_merchant_by(merchant_id, "id")
  end
end
