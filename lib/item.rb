class Item
  attr_reader :id,
              :name,
              :description,
              :unit_price,
              :merchant_id,
              :created_at,
              :updated_at,
              :item_repository

  def initialize(data, repo)
    @id               = data[:id]
    @name             = data[:name]
    @description      = data[:description]
    @unit_price       = data[:unit_price]
    @merchant_id      = data[:merchant_id]
    @created_at       = data[:created_at]
    @updated_at       = data[:updated_at]
    @item_repository  = repo

  end
end
