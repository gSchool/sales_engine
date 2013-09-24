require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/invoice_item_repository'

class InvoiceItemRepositoryTest < MiniTest::Unit::TestCase

  attr_reader :iir

  def setup
    @iir = InvoiceItemRepository.new
  end

  def test_it_exists
    assert_kind_of InvoiceItemRepository, iir
  end

  def test_it_creates_an_array_on_initialize
    assert_kind_of Array, iir.collection_array
  end

  def test_invoice_item_repository_does_return_array_of_invoiceitems
    iir.collection_array.each {|ii| assert_kind_of InvoiceItem, ii}
  end

end