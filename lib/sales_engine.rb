require_relative 'merchant_repository'
require_relative 'item_repository'

class SalesEngine

  def startup

  end

  def merchant_repository
    @merchant_repository ||= MerchantRepository.new.merchants 
  end

  def invoice_repository
    @invoice_repository ||= InvoiceRepository.new.invoices
  end

  def item_repository
    @item_repository ||= ItemRepository.new.items
  end

  def invoice_item_repository
    @invoice_item_repository ||= InvoiceItemRepository.new.invoice_items 
  end

  def customer_repository
    @customer_repository ||= CustomerRepository.new.customers
  end

  def transaction_repository
    @transaction_repository ||= TransactionRepository.new.transactions
  end
end
