require './test/test_helper'

class CustomerRepositoryTest < Minitest::Test
  attr_reader :customer_repo
  def setup
    engine = SalesEngine.new
    engine.startup("./test/fixtures")
    @customer_repo = CustomerRepository.from_file('./test/fixtures/customers.csv', engine)
  end

  def test_it_has_customers
    assert customer_repo.objects
  end

  def test_it_finds_invoices
    invoices = customer_repo.find_invoices("1")
    assert_equal 8, invoices.count
    assert_kind_of Invoice, invoices[0]
  end
end
