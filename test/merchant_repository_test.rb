require './test/test_helper'
require './lib/merchant'
require './lib/merchant_repository'
require './lib/item'
require './lib/invoice'
require './lib/loader'
require 'csv'

class MerchantRepositoryTest < Minitest::Test
  attr_reader :merchant_repo
  def setup
    @merchant_repo = MerchantRepository.from_file('./test/fixtures/merchant.csv')
  end

  def test_it_has_merchants
    assert merchant_repo.merchants
  end
end
