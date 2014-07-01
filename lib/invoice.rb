require 'pry'
class Invoice
  attr_reader :id,
              :customer_id,
              :merchant_id,
              :status,
              :created_at,
              :updated_at,
              :transaction_repository,
              :invoice_item_repository,
              :item_repository
  def initialize(data, path='data')
    @id            = data[:id]
    @customer_id   = data[:customer_id]
    @merchant_id   = data[:merchant_id]
    @status        = data[:status]
    @created_at    = data[:created_at]
    @updated_at    = data[:updated_at]
    @transaction_repository = TransactionRepository.from_file("#{path}/transactions.csv")
    @invoice_item_repository = InvoiceItemRepository.from_file("#{path}/invoice_items.csv")
    @item_repository = ItemRepository.from_file("#{path}/items.csv")
  end

  def transactions
    transaction_repository.objects.find_all{|transaction| transaction.invoice_id == id}
  end

  def invoice_items
    invoice_item_repository.objects.find_all{|invoice_item| invoice_item.invoice_id == id}
  end

  def items
    items_array = []
    invoice_items.each do |invoice_item|
      item = item_repository.objects.find {|item| item.id == invoice_item.item_id}
      items_array << item unless item == nil
    end
    items_array
  end
end
