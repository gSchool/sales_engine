require './test/test_helper'

class ItemRepositoryTest < Minitest::Test
  attr_reader :item_repo
  def setup
    engine = SalesEngine.new
    engine.startup("./test/fixtures")
    @item_repo = ItemRepository.from_file('./test/fixtures/items.csv', engine)
  end

  def test_it_has_items
    assert item_repo.objects
  end
end
