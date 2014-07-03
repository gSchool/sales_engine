class InvoiceItem
  attr_reader :id,
              :item_id,
              :invoice_id,
              :quantity,
              :unit_price,
              :created_at,
              :updated_at,
              :invoice_item_repository

  def initialize(data, path='data', repo)
    @id                      = data[:id]
    @item_id                 = data[:item_id]
    @invoice_id              = data[:invoice_id]
    @quantity                = data[:quantity]
    @unit_price              = data[:unit_price]
    @created_at              = data[:created_at]
    @updated_at              = data[:updated_at]
    @invoice_item_repository = repo
  end

  def items
    invoice_item_repository.find_items(item_id)
  end

  def invoices
    invoice_item_repository.find_invoices(invoice_id)
  end
end
