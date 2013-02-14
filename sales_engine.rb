require 'csv_loader'

class SalesEngine

  def self.startup
    CsvLoader.load_data
  end
end