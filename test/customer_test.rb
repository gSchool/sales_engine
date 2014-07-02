require './test/test_helper'

class CustomerTest < Minitest::Test
  attr_reader :customer
  def setup
    engine = SalesEngine.new
    engine.startup("./test/fixtures")
    @customer = Customer.new({id: "1", first_name: "Joey", last_name: "Ondricka", created_at: "2012-03-27 14:54:09 UTC" , updated_at: "2012-03-27 14:54:09 UTC"}, CustomerRepository.from_file('test/fixtures/customers.csv', engine))
  end

  def test_it_exists
    assert customer
  end

  def test_it_has_an_id
    assert_equal "1", customer.id
  end

  def test_it_has_a_first_name
    assert_equal "Joey", customer.first_name
  end

  def test_it_has_a_last_name
    assert_equal "Ondricka", customer.last_name
  end

  def test_it_has_a_created_at_date
    assert_equal "2012-03-27 14:54:09 UTC", customer.created_at
  end

  def test_it_has_an_updated_at_date
    assert_equal "2012-03-27 14:54:09 UTC", customer.updated_at
  end
end
