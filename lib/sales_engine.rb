require 'csv_loader'

class SalesEngine

  def self.startup
    CsvLoader.load_merchants
    CsvLoader.load_invoices
    CsvLoader.load_invoice_items
    CsvLoader.load_items
    CsvLoader.load_transactions
    CsvLoader.load_customers
  end
end