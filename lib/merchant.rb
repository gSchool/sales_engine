class Merchant

  attr_reader :id,
              :name,
              :created_at,
              :updated_at

  def initialize(input = {})
    @id = input[:id]
    @name = input[:name]
    @created_at = input[:created_at]
    @updated_at = input[:updated_at]
  end

end
