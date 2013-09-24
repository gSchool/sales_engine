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

  def test_it_can_select_a_random_customer_from_all
    customer_repository = CustomerRepository.new("./test/fixtures/customers_test.csv")
    random_customers = []
    5.times do
      random_customers << customer_repository.random
    end
    refute_equal customer_repository.all, random_customers
  end

  def test_it_return_correct_customer_by_id
    customer_repository = CustomerRepository.new("./test/fixtures/customers_test.csv")
    customer = customer_repository.find_by_id("1")
    assert_equal "1", customer.id
  end

  def test_it_return_correct_customer_by_first_name
    customer_repository = CustomerRepository.new("./test/fixtures/customers_test.csv")
    customer = customer_repository.find_by_first_name("Joey")
    assert_equal "Joey", customer.first_name
  end

  def test_it_return_correct_customer_by_last_name
    customer_repository = CustomerRepository.new("./test/fixtures/customers_test.csv")
    customer = customer_repository.find_by_last_name("Ondricka")
    assert_equal "Ondricka", customer.last_name
  end

  def test_it_return_correct_customer_by_created_at
    customer_repository = CustomerRepository.new("./test/fixtures/customers_test.csv")
    customer = customer_repository.find_by_created_at("2012-03-27 14:54:09 UTC")
    assert_equal "2012-03-27 14:54:09 UTC", customer.created_at
  end

  def test_it_return_correct_customer_by_updated_at
    customer_repository = CustomerRepository.new("./test/fixtures/customers_test.csv")
    customer = customer_repository.find_by_updated_at("2012-03-27 14:54:09 UTC")
    assert_equal "2012-03-27 14:54:09 UTC", customer.updated_at
  end

  def test_it_return_correct_number_of_customers_for_all_id
    customer_repository = CustomerRepository.new("./test/fixtures/customers_test.csv")
    customers = customer_repository.find_all_by_id("1")
    assert_equal 1, customers.count
  end

  def test_it_return_correct_number_of_customers_for_all_first_name
    customer_repository = CustomerRepository.new("./test/fixtures/customers_test.csv")
    customers = customer_repository.find_all_by_first_name("Sylvester")
    assert_equal 2, customers.count
  end

  def test_it_return_correct_number_of_customers_for_all_last_name
    customer_repository = CustomerRepository.new("./test/fixtures/customers_test.csv")
    customers = customer_repository.find_all_by_last_name("Toy")
    assert_equal 2, customers.count
  end

  def test_it_return_correct_number_of_customers_for_all_created_at
    customer_repository = CustomerRepository.new("./test/fixtures/customers_test.csv")
    customers = customer_repository.find_all_by_created_at("2012-03-27 14:54:10 UTC")
    assert_equal 4, customers.count
  end

  def test_it_return_correct_number_of_customers_for_all_updated_at
    customer_repository = CustomerRepository.new("./test/fixtures/customers_test.csv")
    customers = customer_repository.find_all_by_updated_at("2012-03-27 14:54:10 UTC")
    assert_equal 4, customers.count
  end

  def test_it_return_empty_array_for_all_last_name_when_none
    customer_repository = CustomerRepository.new("./test/fixtures/customers_test.csv")
    customers = customer_repository.find_all_by_last_name("Busse")
    assert_equal [], customers
    refute customers.nil?
  end

end
