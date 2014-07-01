require './test/test_helper'

class TransactionTest < Minitest::Test
  attr_reader :transaction

  def setup
    @transaction = Transaction.new(id: '1', invoice_id: '1', credit_card_number: '4654405418249632', credit_card_expiration_date: '', result: 'success', created_at: '2012-03-27 14:54:09 UTC', updated_at: '2012-03-27 14:54:09 UTC')
  end

  def test_it_has_an_id
    assert_equal '1', transaction.id
  end

  def test_it_has_an_invoice_id
    assert_equal '1', transaction.invoice_id
  end

  def test_it_has_a_credit_card_number
    assert_equal '4654405418249632', transaction.credit_card_number
  end

  def test_it_has_a_result
    assert_equal 'success', transaction.result
  end

  def test_it_has_created_at_date
    assert_equal '2012-03-27 14:54:09 UTC', transaction.created_at
  end

  def test_it_has_updated_at_date
    assert_equal '2012-03-27 14:54:09 UTC', transaction.updated_at
  end
end
