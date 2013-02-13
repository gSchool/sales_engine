require 'minitest/autorun'
require 'minitest/pride'

require './lib/customer'

class CustomerTest < MiniTest::Unit::TestCase

  def test_it_exists
    customer = Customer.new({})
    assert_kind_of Customer, customer
  end

 def test_it_is_initialized_from_a_hash_of_data
    customer = Customer.new( 
                            id: 'id', first_name: 'first_name', 
                            last_name: 'last_name', created_at: 'date', 
                            updated_at: 'another_date' )
    assert_equal 'id', customer.id
    assert_equal 'first_name', customer.first_name
    assert_equal 'last_name', customer.last_name
    assert_equal 'date', customer.created_at
    assert_equal 'another_date', customer.updated_at

 customer = Customer.new(
                          id: 'id2', first_name: 'first_name2', 
                          last_name: 'last_name2', created_at: 'date2',
                          updated_at: 'another_date2' )
    assert_equal 'id2', customer.id
    assert_equal 'first_name2', customer.first_name
    assert_equal 'last_name2', customer.last_name
    assert_equal 'date2', customer.created_at
    assert_equal 'another_date2', customer.updated_at
    end

  def test_it_stores_customers_from_an_array
    data = [Customer.new( d: 'id2', first_name: 'first_name2', 
                          last_name: 'last_name2', created_at: 'date2',
                          updated_at: 'another_date2' )]
     Customer.add data
     assert_equal 1, Customer.size
    end
end