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

  def self.random
    pick_number = @@merchants.size
    random_number = rand(pick_number)
    random_merchant = @@merchants[random_number]
    random_merchant
  end

  def self.find_by_id(id)
    @@merchants.find {|merchant| merchant.id == id}
  end

  def self.find_by_name(name)
    @@merchants.find {|merchant| merchant.name == name}
  end

  def self.find_all_by_name(name)
    @@merchants.find_all {|merchant| merchant.name == name}
  end
end