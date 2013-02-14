require 'csv'
require 'merchant'
require 'transaction'
require 'invoice'
require 'invoice_item'
require 'item'
require 'customer'


class CsvLoader

  def self.load_data
    load_merchants
    load_invoice_items
    load_items
    load_transactions
    load_invoices
    load_customers
  end

  def self.parse filename
    CSV.open(filename, headers: true, header_converters: :symbol)
  end

  def self.load_merchants
    contents = parse ('./data/merchants.csv')
    merchants = contents.collect { |row| Merchant.new(row.to_hash) }
    Merchant.add merchants
  end


  def self.load_invoice_items
    contents = parse ('./data/invoice_items.csv')
    invoice_items = contents.collect { |row| InvoiceItem.new(row.to_hash) }
    InvoiceItem.add invoice_items
  end

  def self.load_items
    contents = parse('./data/items.csv')
    items = contents.collect { |row| Item.new(row.to_hash) }
    Item.add items
  end

  def self.load_transactions
    contents = parse('./data/transactions.csv')
    transactions = contents.collect { |row| Transaction.new(row.to_hash) }
    Transaction.add transactions
  end

  def self.load_invoices
    contents = parse('./data/invoices.csv')
    invoice = contents.collect { |row| Invoice.new(row.to_hash) }
    Invoice.add invoice
  end

  def self.load_customers
    contents = parse('./data/customers.csv')
    customers = contents.collect { |row| Customer.new(row.to_hash) }
    Customer.add customers
  end

end