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
end
