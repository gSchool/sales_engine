require './lib/finder'

class MerchantRepository
  include Finder

  def self.from_file(file_name='./data/merchants.csv')
    merchants = Loader.read(file_name, Merchant)
    new(merchants)
  end

  attr_reader :objects
  def initialize(merchants)
    @objects = merchants
  end
end
