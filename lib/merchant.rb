require 'pry'
class Merchant
  attr_reader :id,
              :name,
              :created_at,
              :updated_at,
              :item_repository,
              :invoice_repository
  def initialize(data, path='data')
    @id         = data[:id]
    @name       = data[:name]
    @created_at = data[:created_at]
    @updated_at = data[:updated_at]
    @item_repository = ItemRepository.from_file("#{path}/items.csv")
    @invoice_repository = InvoiceRepository.from_file("#{path}/invoices.csv")
  end

  def items
    item_repository.objects.find_all{|item| item.merchant_id == id}
  end

  def invoices
    invoice_repository.objects.find_all{|invoice| invoice.merchant_id == id}
  end
end
