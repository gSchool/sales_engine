class SalesEngine
  attr_reader :merchant_repository,
              :customer_repository,
              :invoice_item_repository,
              :invoice_repository,
              :item_repository,
              :transaction_repository
              
  def startup(path="data")
    @merchant_repository     = MerchantRepository.from_file("#{path}/merchants.csv")
    @customer_repository     = CustomerRepository.from_file("#{path}/customers.csv")
    @invoice_item_repository = InvoiceItemRepository.from_file("#{path}/invoice_items.csv")
    @invoice_repository      = InvoiceRepository.from_file("#{path}/invoices.csv")
    @item_repository         = ItemRepository.from_file("#{path}/items.csv")
    @transaction_repository  = TransactionRepository.from_file("#{path}/transactions.csv")
  end


end
