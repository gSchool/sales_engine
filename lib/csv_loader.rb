require 'csv'
require 'merchant'
require 'transaction'
require 'invoice'
require 'invoice_item'
require 'item'
require 'customer'


class CsvLoader

  def self.load_merchants
    contents = CSV.open('./data/merchants.csv',
                        headers: true,
                        header_converters: :symbol)
    merchants = contents.collect { |row| Merchant.new(row.to_hash) }
    Merchant.add merchants
  end


  def self.load_invoice_items
    contents = CSV.open('./data/invoice_items.csv',
                        headers: true,
                        header_converters: :symbol)
    invoice_items = contents.collect { |row| InvoiceItem.new(row.to_hash) }
    InvoiceItem.add invoice_items
  end

  def self.load_items
    contents = CSV.open('./data/items.csv',
                        headers: true,
                        header_converters: :symbol)
    items = contents.collect { |row| Item.new(row.to_hash) }
    Item.add items
  end

  def self.load_transactions
    contents = CSV.open('./data/transactions.csv',
                        headers: true,
                        header_converters: :symbol)
    transactions = contents.collect { |row| Transaction.new(row.to_hash) }
    Transaction.add transactions
  end

  def self.load_invoices
    contents = CSV.open('./data/invoices.csv',
                        headers: true,
                        header_converters: :symbol)
    invoice = contents.collect { |row| Invoice.new(row.to_hash) }
    Invoice.add invoice
  end

  def self.load_customers
    contents = CSV.open('./data/customers.csv',
                        headers: true,
                        header_converters: :symbol)
    customers = contents.collect { |row| Customer.new(row.to_hash) }
    Customer.add customers
  end

end