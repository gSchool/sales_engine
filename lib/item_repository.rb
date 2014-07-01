class ItemRepository
  include Finder

  def self.from_file(filename='./data/items.csv')
    items = Loader.read(filename, Item)
    new(items)
  end

  attr_reader :objects
  def initialize(items)
    @objects = items
  end
end
