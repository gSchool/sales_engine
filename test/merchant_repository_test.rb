require './test/test_helper'

class MerchantRepositoryTest < Minitest::Test
  attr_reader :merchant_repo

  def setup
    @merchant_repo = MerchantRepository.from_file('./test/fixtures/merchants.csv')
  end

  def test_it_has_merchants
    assert merchant_repo.objects
  end
end
