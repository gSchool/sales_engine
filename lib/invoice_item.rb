
class InvoiceItem

  attr_accessor :id, :item_id, :invoice_id, :quantity, :unit_price, :created_at, :updated_at

  def initialize(input)
    @id =input[:id]
    @item_id = input[:item_id]
    @invoice_id = input[:invoice_id]
    @quantity = input[:quantity]
    @unit_price = input[:unit_price]
    @created_at = input[:created_at]
    @updated_at = input[:updated_at]
  end

  def self.add(array_of_data)
    @@invoice_item = array_of_data
  end

  def self.size
    @@invoice_item.size
  end

end