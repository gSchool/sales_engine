require_relative 'item'

class ItemRepository
  attr_accessor :items

  def initialize
    @items = create_items_array
  end

  def create_items_array
    [Item.new]
  end

  def default_filename
    'items.csv'
  end
end
