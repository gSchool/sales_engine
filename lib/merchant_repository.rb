require_relative 'merchant'

class MerchantRepository

  attr_accessor :merchants

  def initialize
    @merchants = create_merchant_array 
  end

  def create_merchant_array
    [Merchant.new]
  end

  def default_filename
    './data/merchants.csv'
  end

end
