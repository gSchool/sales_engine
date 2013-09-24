require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/invoice_repository'

class InvoiceRepositoryTest < MiniTest::Unit::TestCase

  attr_reader :ir

  def setup
    @ir = InvoiceRepository.new
  end

  def test_it_exists
    assert_kind_of InvoiceRepository, ir
  end

  def test_it_returns_an_array_on_init
    assert_kind_of Array, ir.invoices 
  end

  def test_invoice_repository_does_return_array_of_invoices
    ir.invoices.each { |invoice|  assert_kind_of Invoice, invoice }
  end

end