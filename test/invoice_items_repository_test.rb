require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/invoice_items_repository'

class InvoiceItemsRepositoryTest < Minitest::Test
  
  def setup
    @iir = InvoiceItemsRepository.new("./test/fixtures/invoice_items_test.csv")
  end

  def test_it_is_initialized_with_a_filepath
    assert_equal "./test/fixtures/invoice_items_test.csv", @iir.file_path
  end

  def test_open_file_has_default_file_path
    loaded_data = @iir.open_file
    assert_kind_of CSV, loaded_data
  end

  def test_it_has_an_all_method
    assert_respond_to @iir, :all
  end

  def test_it_populates_all_array_from_csv
    assert_equal 7, @iir.all.count
  end

  def test_it_populates_all_the_invoice_items_data
    invoice_items = @iir.all
    first_invoice_item = invoice_items[0]
    assert_equal "1", first_invoice_item.id 
    assert_equal "539", first_invoice_item.item_id
    assert_equal "1", first_invoice_item.invoice_id
    assert_equal "5", first_invoice_item.quantity
    assert_equal "13635", first_invoice_item.unit_price
    assert_equal "2012-03-27 14:54:09 UTC", first_invoice_item.created_at 
    assert_equal "2012-03-27 14:54:09 UTC", first_invoice_item.updated_at
  end

  def test_it_can_select_a_random_customer_from_all
    random_invoice_items = []
    5.times do
      random_invoice_items << @iir.random
    end
    refute_equal [nil,nil,nil,nil,nil], random_invoice_items
    refute_equal @iir.all, random_invoice_items
  end

  def test_it_returns_correct_single_invoice_item_by_attributes
    assert_equal "1", @iir.find_by_id("1").id 
    assert_equal "539",@iir.find_by_item_id("539").item_id
    assert_equal "1", @iir.find_by_invoice_id("1").invoice_id
    assert_equal "5", @iir.find_by_quantity("5").quantity
    assert_equal "13635", @iir.find_by_unit_price("13635").unit_price
    assert_equal "2012-03-27 14:54:09 UTC", @iir.find_by_created_at("2012-03-27 14:54:09 UTC").created_at 
    assert_equal "2012-03-27 14:54:09 UTC", @iir.find_by_updated_at("2012-03-27 14:54:09 UTC").updated_at 
  end

  def test_it_returns_correct_count_of_merchants_by_all_attributes
    assert_equal 1, @iir.find_all_by_id("1").count
    assert_equal 1, @iir.find_all_by_item_id("539").count
    assert_equal 7, @iir.find_all_by_invoice_id("1").count
    assert_equal 2, @iir.find_all_by_quantity("5").count
    assert_equal 1, @iir.find_all_by_unit_price("13635").count
    assert_equal 7, @iir.find_all_by_created_at("2012-03-27 14:54:09 UTC").count 
    assert_equal 7, @iir.find_all_by_updated_at("2012-03-27 14:54:09 UTC").count  
  end

  def test_it_returns_empty_array_for_all_item_id_when_no_results
    ii = @iir.find_all_by_item_id("99")
    assert_equal [], ii
  end
end
