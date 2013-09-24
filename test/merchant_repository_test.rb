require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/merchant_repository'

class MerchantRepositoryTest < MiniTest::Test

  def setup
    @mr = MerchantRepository.new("./test/fixtures/merchants_test.csv")
  end

  def test_it_is_initialized_with_a_filepath
    assert_equal "./test/fixtures/merchants_test.csv", @mr.file_path
  end

  def test_open_file_has_default_file_path
    loaded_data = @mr.open_file
    assert_kind_of CSV, loaded_data
  end

  def test_it_has_an_all_method
    assert_respond_to @mr, :all
  end

  def test_it_populates_all_array_from_csv
    assert_equal 6, @mr.all.count
  end

  def test_it_populates_all_the_customer_data 
    customers = @mr.all
    first_customer = customers[0]
    assert_equal "1", first_customer.id
    assert_equal "Schroeder-Jerde", first_customer.name
    assert_equal "2012-03-27 14:53:59 UTC", first_customer.created_at
    assert_equal "2012-03-27 14:53:59 UTC", first_customer.updated_at
  end

  def test_it_can_select_a_random_customer_from_all
    random_merchants = []
    5.times do
      random_merchants << @mr.random
    end
    refute_equal [nil,nil,nil,nil,nil], random_merchants
    refute_equal @mr.all, random_merchants
  end

  def test_it_returns_correct_single_merchant_by_attributes
    assert_equal "1",  @mr.find_by_id("1").id
    assert_equal "Schroeder-Jerde", @mr.find_by_name("Schroeder-Jerde").name
    assert_equal "2012-03-27 14:53:59 UTC", @mr.find_by_created_at("2012-03-27 14:53:59 UTC").created_at
    assert_equal "2012-03-27 14:53:59 UTC", @mr.find_by_updated_at("2012-03-27 14:53:59 UTC").updated_at
  end

  def test_it_returns_correct_count_of_merchants_by_all_attributes 
    assert_equal 1, @mr.find_all_by_id("1").count
    assert_equal 2, @mr.find_all_by_name("Williamson Group").count
    assert_equal 6, @mr.find_all_by_created_at("2012-03-27 14:53:59 UTC").count
    assert_equal 5, @mr.find_all_by_updated_at("2012-03-27 14:53:59 UTC").count
  end

  def test_it_returns_empty_array_for_all_name_when_no_results
    merchants = @mr.find_all_by_name("Yankees")
    assert_equal [], merchants
  end

end
