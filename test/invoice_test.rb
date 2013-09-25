require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/invoice'

class InvoiceTest < Minitest::Test 

  def test_that_it_exists
    instance = Invoice.new
    assert_kind_of Invoice, instance
  end

  def test_it_can_be_give_cutomer_id
    instance = Invoice.new(:customer_id => "11")
    assert_equal "11", instance.customer_id
  end

  def test_it_can_be_give_a_first_name_last_name_id_created_at_and_updated_at
    instance = Invoice.new(:id => "1", :customer_id => "1", :merchant_id => "44", :status => "shipped", :created_at => "2012-03-27 14:54:09 UTC", :updated_at => "2012-03-27 14:54:10 UTC")
    assert_equal "1", instance.customer_id
    assert_equal "44", instance.merchant_id
    assert_equal "shipped", instance.status
    assert_equal "2012-03-27 14:54:09 UTC", instance.created_at
    assert_equal "2012-03-27 14:54:10 UTC", instance.updated_at
  end
end


