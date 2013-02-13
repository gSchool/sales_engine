require 'minitest/autorun'
require 'minitest/pride'

require './lib/transaction'

class TransactionTest < MiniTest::Unit::TestCase

  def test_it_exists
    transaction = Transaction.new({})
    assert_kind_of Transaction, transaction
  end

  # def test_it_can_create_merchants
  #   data = [{id: 'id', name: 'name', created_at: 'date', updated_at: 'another_date'}]
  #   merchant = Merchant.populate data
  #   assert_equals 'id', merchant.id
  # end

  def test_it_is_initialized_from_a_hash_of_data
    transaction = Transaction.new(
                               id: 'id',
                               invoice_id: 'invoice_id',
                               credit_card_number: 'credit_card_number',
                               credit_card_expiration_date: 'credit_card_expiration_date',
                               result: 'result',
                               created_at: 'date',
                               updated_at: 'another_date')

    assert_equal 'id', transaction.id
    assert_equal 'invoice_id', transaction.invoice_id
    assert_equal 'credit_card_number', transaction.credit_card_number
    assert_equal 'credit_card_expiration_date', transaction.credit_card_expiration_date
    assert_equal 'result', transaction.result
    assert_equal 'date', transaction.created_at
    assert_equal 'another_date', transaction.updated_at

    transaction = Transaction.new(
                               id: 'id2',
                               invoice_id: 'invoice_id2',
                               credit_card_number: 'credit_card_number2',
                               credit_card_expiration_date: 'credit_card_expiration_date2',
                               result: 'result2',
                               created_at: 'date2',
                               updated_at: 'another_date2')

    assert_equal 'id2', transaction.id
    assert_equal 'invoice_id2', transaction.invoice_id
    assert_equal 'credit_card_number2', transaction.credit_card_number
    assert_equal 'credit_card_expiration_date2', transaction.credit_card_expiration_date
    assert_equal 'result2', transaction.result
    assert_equal 'date2', transaction.created_at
    assert_equal 'another_date2', transaction.updated_at
  end

  def test_it_stores_transactions_from_an_array
    transaction = Transaction.new(
                               id: 'id',
                               invoice_id: 'invoice_id',
                               credit_card_number: 'credit_card_number',
                               credit_card_expiration_date: 'credit_card_expiration_date',
                               result: 'result',
                               created_at: 'date',
                               updated_at: 'another_date')
    data = [transaction]
    Transaction.add data
    assert_equal 1, Transaction.size

  end

end
