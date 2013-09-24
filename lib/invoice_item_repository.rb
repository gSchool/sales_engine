require_relative 'invoice_item'
require_relative 'base_repository'

class InvoiceItemRepository < BaseRepository

  def initialize
    @collection_array = create_invoice_items_array
  end

  def create_invoice_items_array
    [InvoiceItem.new]
  end

  def default_filename
    'invoice_items.csv'
  end

end