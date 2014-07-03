class InvoiceItem
  attr_reader :id,
              :item_id,
              :invoice_id,
              :quantity,
              :unit_price,
              :created_at,
              :updated_at,
              :invoice_item_repository

  def initialize(data, repo)
    @id                      = data[:id]
    @item_id                 = data[:item_id]
    @invoice_id              = data[:invoice_id]
    @quantity                = data[:quantity]
    @unit_price              = data[:unit_price]
    @created_at              = data[:created_at]
    @updated_at              = data[:updated_at]
    @invoice_item_repository = repo
  end
end
