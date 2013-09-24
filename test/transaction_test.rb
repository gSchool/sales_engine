require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/transaction'

class TransactionTest < Minitest::Test

  def test_it_exists
    instance = Transaction.new
    assert_kind_of Transaction, instance
  end

  def tests_it_can_be_give_an_invoice_id
    instance = Transaction.new(:invoice_id => "7")
    assert_equal "7", instance.invoice_id
  end

  def test_it_can_be_given_attributes
    instance = Transaction. new(:id => "4", :invoice_id => "5", :credit_card_number => "81930383492010", :credit_card_expiration_date => 08/12, :result => "failure", :created_at => "2012-03-27 14:54:09 UTC", :created_by => "2012-03-27 14:54:10 UTC")
      assert_equal "4", customer.id
      assert_equal "5", customer.invoice_id
      assert_equal "81930383492010", customer.credit_card_number
      assert_equal "08/12", customer.credit_card_expiration_date
      assert_equal "2012-03-27 14:54:09 UTC", customer.created_at
      assert_equal "2012-03-27 14:54:10 UTC", customer.updated_at

end
