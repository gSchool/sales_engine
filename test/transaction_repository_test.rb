require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/transaction_repository'

class TransactionRepositoryTest < Minitest::Test 

  def test_that_filepath_is_initialized
    skip
    instance = TransactionRepository.new("./test/fixtures/transaction_test")
    # assert_equal "./test/fixtures/transaction_test.csv", instance.file_path
  # end
end

#   def test_class_has_an_all_method
#     transaction_repository = TransactionRepository.new("./test/fixtures/transaction_test.csv")
#     assert_respond_to transaction_repository, :all
end
