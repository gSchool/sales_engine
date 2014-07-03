require './lib/finder'
require 'pry'

class MerchantRepository
  include Finder
  def self.from_file(file_name='./data/merchants.csv', klass, engine)
    merchants = Loader.read(file_name, Merchant, self)
    new(merchants, engine)
  end

  attr_reader :objects, :sales_engine
  def initialize(merchants, engine)
    @objects = merchants
    @sales_engine = engine
  end

  def find_items(id)
    sales_engine.find_items_by(id, "merchant_id")
  end

  def find_invoices(id)
    sales_engine.find_invoices_by(id, "merchant_id")
  end
end
