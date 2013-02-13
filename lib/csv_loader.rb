require 'csv'
require 'merchant'

class CsvLoader

  def self.load_merchants
    contents = CSV.open('./data/merchants.csv', headers: true, header_converters: :symbol)
    merchants = contents.collect { |row| Merchant.new(row.to_hash) }
    Merchant.add merchants
  end

end