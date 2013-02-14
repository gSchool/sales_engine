require './lib/csv_loader'
require './lib/item'

class ItemTest < MiniTest::Unit::TestCase
  
  def test_it_exists
    item = Item.new({})
     assert_kind_of = Item, item
  end
  
  def test_it_is_initialized_from_a_hash_of_data
    item = Item.new( 
                    id: 'id', name: 'name', description: 'description',
                    unit_price: 'unit_price', merchant_id: 'merchant_id',
                    created_at: 'created_at', updated_at: 'updated_at' )
    assert_equal 'id', item.id
    assert_equal 'name', item.name
    assert_equal 'description', item.description
    assert_equal 'unit_price', item.unit_price
    assert_equal 'merchant_id', item.merchant_id
    assert_equal 'created_at', item.created_at
    assert_equal 'updated_at', item.updated_at

    item = Item.new( 
                    id: 'id2', name: 'name2', description: 'description2',
                    unit_price: 'unit_price2', merchant_id: 'merchant_id2',
                    created_at: 'created_at2', updated_at: 'updated_at2' )
    assert_equal 'id2', item.id
    assert_equal 'name2', item.name
    assert_equal 'description2', item.description
    assert_equal 'unit_price2', item.unit_price
    assert_equal 'merchant_id2', item.merchant_id
    assert_equal 'created_at2', item.created_at
    assert_equal 'updated_at2', item.updated_at
  end

   def test_it_stores_items_from_an_array
   data = [Item.new( 
                    id: 'id', name: 'name', description: 'description',
                    unit_price: 'unit_price', merchant_id: 'merchant_id',
                    created_at: 'created_at', updated_at: 'updated_at' )]
    Item.add(data)
    assert_equal 1, Item.size
   end

end