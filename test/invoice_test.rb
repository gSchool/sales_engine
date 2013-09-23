require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/invoice'

class InvoiceTest < MiniTest::Unit::TestCase

  def test_it_exists
    inv = Invoice.new
    assert_kind_of Invoice, inv
  end

end