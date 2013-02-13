require 'csv'
require 'merchant'
require 'invoice_item'


class CsvLoader

  def self.load_merchants
    contents = CSV.open('./data/merchants.csv', headers: true, header_converters: :symbol)
    merchants = contents.collect { |row| Merchant.new(row.to_hash) }
    Merchant.add merchants
  end

  def self.load_invoice_items
    contents = CSV.open('./data/merchants.csv', headers: true, header_converters: :symbol)
    invoice_items = contents.collect { |row| InvoiceItem.new(row.to_hash) }
    InvoiceItem.add(invoice_items)
  end
end