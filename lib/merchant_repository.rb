require_relative 'merchant'
require_relative 'base_repository'

class MerchantRepository < BaseRepository

  def initialize
    @collection_array = create_merchant_array 
  end

  def create_merchant_array
    [Merchant.new]
  end

  def default_filename
    './data/merchants.csv'
  end

end
