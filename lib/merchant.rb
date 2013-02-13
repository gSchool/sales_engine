
class Merchant

attr_accessor :id, :name, :created_at, :updated_at

  def initialize(input)
    @id = input[:id]
    @name = input[:name]
    @created_at = input[:created_at]
    @updated_at = input[:updated_at]
  end

  def self.add(array_of_data)
    @@merchants = array_of_data
  end

  def self.size
    @@merchants.size

  end
end