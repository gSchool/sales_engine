require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/base_unit'

class BaseUnitTest < MiniTest::Unit::TestCase
  
  attr_reader :bu
  def setup
    data = {id: 1}
    @bu = BaseUnit.new(data)
  end

  def test_it_exists
    assert_kind_of BaseUnit, bu
  end

  def test_it_has_an_id
    assert_equal 1, bu.id
  end

  def test_it_has_created_instance_methods
    assert bu.methods.include?(:id)
  end  
end
