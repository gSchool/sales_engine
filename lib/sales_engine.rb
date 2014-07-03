require 'pry'
class SalesEngine
  attr_reader :merchant_repository,
              :customer_repository,
              :invoice_item_repository,
              :invoice_repository,
              :item_repository,
              :transaction_repository

  def startup(path='data')
    @transaction_repository  = TransactionRepository.from_file("#{path}/transactions.csv", self)
    @merchant_repository     = MerchantRepository.from_file("#{path}/merchants.csv",self)
    @customer_repository     = CustomerRepository.from_file("#{path}/customers.csv",self)
    @invoice_item_repository = InvoiceItemRepository.from_file("#{path}/invoice_items.csv", self)
    @invoice_repository      = InvoiceRepository.from_file("#{path}/invoices.csv", self)
    @item_repository         = ItemRepository.from_file("#{path}/items.csv", self)
  end

  def find_items_by(id, attribute)
    item_repository.objects.find_all{|item| item.send(attribute) == id}
  end

  def find_invoices_by(id, attribute)
    invoice_repository.objects.find_all {|invoice| invoice.send(attribute) == id}
  end

  def find_invoice_items_by(id, attribute)
    invoice_item_repository.objects.find_all{|invoice_item| invoice_item.send(attribute) == id}
  end

  def find_merchant_by(id, attribute)
    merchant_repository.objects.find {|merchant| merchant.send(attribute) == id}
  end
end
