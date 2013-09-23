require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/customer'

class CustomerTest < MiniTest::Unit::TestCase

  def test_it_exists
    cust = Customer.new
    assert_kind_of Customer, cust
  end

end