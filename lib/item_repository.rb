require_relative 'item'
require_relative 'base_repository'

class ItemRepository < BaseRepository

  def initialize
    @collection_array = create_items_array
  end

  def create_items_array
    [Item.new]
  end

  def default_filename
    'items.csv'
  end
  
end
