require 'minitest/autorun'
require 'minitest/pride'
require './lib/customer_repository'
require 'csv'

class CustomerRepositoryTest < Minitest::Test

  def test_it_is_initialized_with_a_filepath
    customer_repository = CustomerRepository.new("./test/fixtures/customers_test.csv")
    assert_equal "./test/fixtures/customers_test.csv", customer_repository.file_path
  end

  def test_open_file_has_default_file_path
    customer_repository = CustomerRepository.new("./test/fixtures/customers_test.csv")
    loaded_data = customer_repository.open_file
    assert_kind_of CSV, loaded_data
  end

  def test_it_has_an_all_method
    customer_repository = CustomerRepository.new("./test/fixtures/customers_test.csv")
    assert_respond_to customer_repository, :all
  end

  def test_it_populates_all_array_from_csv
    customer_repository = CustomerRepository.new("./test/fixtures/customers_test.csv")
    customer_repository.all
    assert_equal 5, customer_repository.all.count
  end

  def test_it_populates_all_the_customer_data
    customer_repository = CustomerRepository.new("./test/fixtures/customers_test.csv")
    customers = customer_repository.all
    first_customer = customers[0]
    assert_equal "1", first_customer.id
    assert_equal "Joey", first_customer.first_name
    assert_equal "Ondricka", first_customer.last_name
    assert_equal "2012-03-27 14:54:09 UTC", first_customer.created_at
    assert_equal "2012-03-27 14:54:09 UTC", first_customer.updated_at

    assert_equal "1", first_customer.id
  end





#test_random_customer def all all.sample end





  # def test_search
  # end

end
