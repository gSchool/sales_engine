require_relative 'invoice_item'

class InvoiceItemRepository

  attr_accessor :invoice_items

  def initialize
    @invoice_items = create_invoice_items_array
  end

  def create_invoice_items_array
    [InvoiceItem.new]
  end

  def default_filename
    'invoice_items.csv'
  end

end