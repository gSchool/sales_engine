class Merchant
  attr_reader :id,
              :name,
              :created_at,
              :updated_at,
              :merchant_repository

  def initialize(data, path='data', repo)
    @id                  = data[:id]
    @name                = data[:name]
    @created_at          = data[:created_at]
    @updated_at          = data[:updated_at]
    @merchant_repository = repo

  end

  def items
    merchant_repository.find_items(id)
  end

  def invoices
    merchant_repository.find_invoices(id)
  end
end
