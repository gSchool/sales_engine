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

  def test_it_can_be_give_a_first_name_last_name_id_created_at_and_updated_at
    customer = Customer.new(:id => "1", :first_name => "Simon", :last_name => "Bolivar", :created_at => "2012-03-27 14:54:09 UTC", :updated_at => "2012-03-27 14:54:10 UTC")
    assert_equal "Simon", customer.first_name
    assert_equal "Bolivar", customer.last_name
    assert_equal "1", customer.id
    assert_equal "2012-03-27 14:54:09 UTC", customer.created_at
    assert_equal "2012-03-27 14:54:10 UTC", customer.updated_at
  end
end
