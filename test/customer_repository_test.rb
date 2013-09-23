require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/customer_repository'

class CustomerRepositoryTest < MiniTest::Unit::TestCase

  attr_reader :cr

  def setup
    @cr = CustomerRepository.new
  end

  def test_it_exists
    assert_kind_of CustomerRepository, cr 
  end

  def test_it_does_create_an_array
    assert_kind_of Array, cr.customers 
  end

end