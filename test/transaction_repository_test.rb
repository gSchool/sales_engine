require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/transaction_repository'

class TransactionRepositoryTest < MiniTest::Unit::TestCase
  
  attr_reader :tr

  def setup
    @tr = TransactionRepository.new 
  end

  def test_it_exists
    assert_kind_of TransactionRepository, tr
  end

  def test_it_creates_array_during_initialization
    assert_kind_of Array, tr.collection_array
  end

  def test_transaction_repository_does_return_array_of_transactions
    tr.collection_array.each {|trans| assert_kind_of Transaction, trans}
  end
end
