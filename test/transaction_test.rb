require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/transaction'

class TransactionTest < MiniTest::Unit::TestCase

  def test_it_exists
    t = Transaction.new
    assert_kind_of Transaction, t
  end
end
