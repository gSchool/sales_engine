require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/item'

class ItemRepositoryTest< MiniTest::Unit::TestCase
  attr_reader :ir

  def setup
    @ir = ItemRepository.new
  end

  def test_it_exists
    assert_kind_of ItemRepository, ir
  end

  def test_does_it_create_array_on_initialize
    assert_kind_of Array, ir.items
  end
end
