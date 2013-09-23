require 'minitest/autorun'
require 'minitest/pride'
require './lib/customer'

class CustomerTest < MiniTest::Test

  def test_it_exists
    customer = Customer.new
    assert_kind_of Customer, customer
  end

  def test_it_can_be_given_a_first_name
    customer = Customer.new(:first_name => "Simon")
    assert_equal "Simon", customer.first_name
  end

end
